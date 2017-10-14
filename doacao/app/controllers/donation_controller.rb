class DonationController < ApplicationController

  # def index
  #   @donations = Donation.paginate(:page => params[:page], :per_page => 6)
  # end


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

  def show
    @donation = Donation.find(params[:id])
  end

  def donation_params
	 params.require(:donation).permit(:name, :porte, :age, :sex, :type, :status, :category_id, :photo)
  end


end
