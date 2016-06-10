class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
	end

	def new
	end

	def create
		@contact = Contact.new(contact_params)
		@contact.save
		redirect_to @contact
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
	end

	private
		def contact_params
			params.require(:contact).permit(:name, :nomor_hp)
		end
end
