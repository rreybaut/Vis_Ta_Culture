class OffersController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_offer, only: %i[show edit update destroy]

  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path, notice: "You have create the offer!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy
    # rediriger vers l'index des offres
    redirect_to offers_path, notice: "Offer was successfully destroyed."
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:country, :city, :price, :lodging, :meal, :pet, :smoker, :excursion, :child, :user_id, :photo )
  end
end
