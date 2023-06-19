class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(set_params)
    @pet.user = @user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @pet.update(set_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_params
    params.require(:pet).permit(:name, :address, :price, :content, :rating, :photo, :species)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end
end