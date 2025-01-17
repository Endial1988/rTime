class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def update
    if current_user.update_attributes(params[:user])
      @last_punch = current_user.punches.last
      if @last_punch
        @last_punch.pull = Time.zone.now
        @last_punch.save
      end
      @punch = current_user.punches.new(
        :status  => params[:user][:status],
        :comment => params[:user][:comment]
        )
      if @punch.save
        redirect_to root_url, :success => "Update success!"
      end
    end
  end
  
  def show
    @user  = User.find(params[:id])
		@title = "#{@user.fname} #{@user.lname}"
  end

	def index
		@title = "Employee List"
		@users = User.all
	end
end
