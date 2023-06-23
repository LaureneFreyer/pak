class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]
  before_action :map, only: [:index]
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = <<~SQL
        pets.name ILIKE :query
        OR pets.species ILIKE :query
        OR pets.address ILIKE :query
        OR users.first_name ILIKE :query
      SQL
      @pets = Pet.joins(:user).where(sql_query, query: "%#{params[:query]}%")

    else
      @pets = Pet.all
    end
    params[:query] = nil
  end

  def user_pets
    @pets = current_user.pets
  end

  def show
    @pet = Pet.find(params[:id])
    @markers = [
      {
        lat: @pet.latitude,
        lng: @pet.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { pet: @pet }),
        marker_html: render_to_string(partial: "marker")
      }
    ]
    @reservation = Reservation.new
  end


  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(set_params)
    @user = current_user
    @pet.user = @user
    if @pet.save!
      redirect_to user_pets_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @pet.update(set_params)
    if @pet.save
      redirect_to user_pets_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def animaux_autour
    if params[:latitude].present? && params[:longitude].present?
      @pets = Pet.near([params[:latitude], params[:longitude]], 100)
    else
      @pets = Pet.near([46.160329, -1.151139], 100)  # Par défaut à Paris si aucune localisation n'est fournie
    end

    @markers = @pets.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { pet: pet }),
        marker_html: render_to_string(partial: "marker")
      }
    end
    respond_to do |format|
      format.html
      format.json { render json: { pets: @pets, markers: @markers } }
    end
  end







  private

  def set_params
    params.require(:pet).permit(:name, :address, :price, :content, :rating, :photo, :species)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def map
    @pets = Pet.geocoded
      @markers = @pets.geocoded.map do |pet|
        {
          lat: pet.latitude,
          lng: pet.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: { pet: pet }),
          marker_html: render_to_string(partial: "marker")
        }
      end
  end
end
