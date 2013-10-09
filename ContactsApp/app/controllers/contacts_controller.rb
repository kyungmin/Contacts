class ContactsController < ApplicationController
  def index
    @contacts = Contact.where(:user_id => params[:user_id])
    @contact_shares = ContactShare.where(:user_id => @contacts.first.user_id)
    @shared_contacts = []
    @contact_shares.each do |contact_share|
      @shared_contacts += Contact.where(:id => contact_share.contact_id)
    end
    @all_contacts = @contacts + @shared_contacts
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
