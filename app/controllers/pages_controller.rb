class PagesController < ApplicationController
  def login
    if params[:student] == nil
      username = password = ""
    else
      username = params[:student][:username]
      password = params[:student][:password]
    end
    conn = ActiveRecord::Base.connection
    user_id = conn.select_value("select getID('" + username + "','" + password + "')").to_i 
    if user_id >0
        respond_to do |format|
        format.html {render :text => '1'}
        end
    else
        respond_to do |format|
        format.html {render :text => '-1'}
     end
    end
  end
end

