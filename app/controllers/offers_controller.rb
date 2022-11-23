class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
    @offer.user_id = current_user
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      # redirect_to offer_path(@offer)
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
      # raise
    end
  end

  def destroy

  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:country, :city, :price, :lodging, :meal, :pet, :smoker, :excursion, :child, :user_id)
  end
end
