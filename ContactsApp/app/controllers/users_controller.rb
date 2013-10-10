class UsersController < ApplicationController
  def index
    @users = User.all
    render :text => @users
  end

  def show
    render :json => User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      render :json => @user
    else
      render :json => @user.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    puts "user is: #{@user}"
    if @user.destroy #delete
      render :json => true
    end
  end

  def favorite
    @favorites = Contact.where(:user_id => params[:id], :favorite => true)
    render :json => @favorites
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      render :json => @user
    else
      render :json => @user.errors
    end
  end
end
