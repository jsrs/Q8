class UsersController < ApplicationController
  def index
    @students = Student.all
    respond_to do |format|
      format.json {render :json =>@students}
    end
  end
end
