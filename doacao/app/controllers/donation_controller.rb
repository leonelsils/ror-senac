class DonationController < ApplicationController
  
  def index
  end

  def new
  	@donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      redirect_to donations_path, notice: "Doação cadastrado com sucesso!"
    else
      render :new
    end
  end

  def donation_params
	params.require(:donation).permit(:name, :porte, :type, :status, :category)
  end


end
