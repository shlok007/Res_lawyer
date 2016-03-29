class LawyerController < ApplicationController
	def show
		@lawyer=Lawyer.find(params[:id])
	end
end
