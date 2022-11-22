class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def show
  end

  def create
    # @offer = Offer.new(offer_params)
    # if @offer.save
    #   redirect_to offer_path(@offer)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def destroy

  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:country, :city, :price, :lodging, :meal, :pet, :smoker, :excursion, :child)
  end
end
