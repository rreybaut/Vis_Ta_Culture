class OffersController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  # Refactor: Mise en commun d'une partie du code

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
    # user_id ou user ?
    @offer.user = current_user
    if @offer.save
      # redirect_to offer_path(@offer)
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
      # raise
    end
  end

  def edit
  end

  def update
    # Afficher un formulaire pré établi
     # @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    #réutiliser la méthode privée Rails offer_params

    redirect_to offer_path(@offer)
  end


  def destroy
    # @offer = Offer.find(params[:id])
    # methode ActiveRecord destroy permettant de supprimer une instance
    @offer.destroy
    # rediriger vers l'index des offres
    redirect_to offers_path, status: :see_other
    # see_other: code HTTP de redirection
   end


  private

  def set_offer
    @offer = Offer.find(params[:id])

  end

  def offer_params
    params.require(:offer).permit(:country, :city, :price, :lodging, :meal, :pet, :smoker, :excursion, :child, :user_id, :photo )
  end

end
