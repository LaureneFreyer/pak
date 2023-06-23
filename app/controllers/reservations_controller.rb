class ReservationsController < ApplicationController
  before_action :find_reservation, only: [:edit, :update, :destroy, :accept, :reject]

  def user_reservations
    @reservations = current_user.reservations
  end

  def owner_reservations
    @reservations = current_user.pets.map { |pet| pet.reservations }.flatten
  end

  def accept
    @reservation.update(status: 'accepted')
    redirect_to owner_reservations_path
  end

  def reject
    @reservation.update(status: 'rejected')
    redirect_to owner_reservations_path
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.status = 'pending' # Set status as pending initially
    @reservation.pet = Pet.find(params[:pet_id])
    if @reservation.save
      redirect_to user_reservations_path
    else
      render 'pets/show', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if reservation_params[:status] == 'approved'
      @reservation.update(status: 'approved')
    elsif reservation_params[:status] == 'denied'
      @reservation.update(status: 'denied')
    end
    redirect_to my_requests_pets_path
  end

  def destroy
    @reservation.destroy
    redirect_to user_reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :status)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
