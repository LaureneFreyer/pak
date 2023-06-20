class ReservationsController < ApplicationController
  before_action :find_params, only: [:edit, :update, :destroy]
  def index
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new(set_params)
    @reservation.user = current_user
    @reservation.pet = Pet.find(params[:pet_id])
    if @reservation.save!
      redirect_to pets_path
    else
      render 'pets/show', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @reservation.update(set_params)
    if @reservation.save!
      redirect_to reservations_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
  end

  private

  def set_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def find_params
    @reservation = Reservation.find(params[:id])
  end
end
