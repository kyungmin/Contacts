class ContactSharesController < ApplicationController
  def create
    @contact_share = ContactShare.new(params[:contact_share])
    if @contact_share.save
      render :json => @contact_share
    else
      render @contact_share.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    @contact_share = ContactShare.find(params[:id])
    if @contact_share.destroy
      head :ok
    else
      render @contact_share.errors, :status => :unprocessable_entity
    end
  end
end
