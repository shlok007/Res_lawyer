class LawyerController < ApplicationController
	def show
		@lawyer=Lawyer.find(params[:id])
	end
	def book
		@lawyer=Lawyer.find(params[:id])
		Booking.create(lawyerid: params[:id],userid: current_user.id)
		flash[:alert]="Booking Request has been sent to "+ @lawyer.email.to_s
		redirect_to root_path
	end
	def confirm
		@lawyer=current_lawyer
        @book=Booking.find_by(lawyerid: current_lawyer.id, userid: params[:id])
        @book.request=true
        @book.save
        flash[:alert]="You confirmed the request for "+User.find(params[:id]).email
	    redirect_to root_path
	end
end
