class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  	@donations = Donation.paginate(:page => params[:page], :per_page => 6)
  end
end
