class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def home

  end

  def search
    search = params[:contact][:search_field]
    @query = search
    @contacts = Contact.where('first_name LIKE ? OR last_name like ?', "%#{search}%", "%#{search}%")
    @contacts = @contacts.paginate(:page => params[:page])
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :company, :data)
    end
end
