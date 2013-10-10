class ContactsController < ApplicationController
  def index
    @all_contacts = Contact.contacts_for_user_id(params[:user_id])

    render :json => @all_contacts
  end

  def show
    render :json => Contact.find(params[:id])
  end


  def create
    p = params[:contact]
    p["user_id"] = params[:user_id]
    @contact = Contact.new(p)

    if @contact.save
      render :json => @contact
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      render :json => @contact
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end
  end


  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      head :ok
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end

  end
end
