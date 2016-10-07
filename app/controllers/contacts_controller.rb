class ContactsController < ApplicationController
  before_filter :verify_logged_in, :except => [:new, :create]
  before_filter :find_contact, :only => [:update, :destroy]

  def index
    @contacts = Contact.all
  end

  def new
  end

  # <Contact id: nil, name: nil, email: nil, phone: nil, msg: nil, created_at: nil, updated_at: nil>
  def create
    contact = Contact.new
    contact.name = params[:name]
    contact.email = params[:email]
    contact.phone = params[:phone]
    contact.msg = params[:msg]
    if contact.save
      redirect_to '/'
    else
      render :new
    end
  end

  # def edit
  # end
  # using redirect_to :back
  # for update instead

  def update
    #read or unread
  end

  def destroy
    # if logged_in?
    # @contact = Contact.find(params[:id])
    if @contact.present?
      @contact.destroy
      redirect_to :back
    else
      redirect_to :back
    end
  end

  protected
  def find_contact
    @contact = Contact.find(params[:id])
  end

  def verify_logged_in
    redirect_to '/' if !logged_in?
  end

end
