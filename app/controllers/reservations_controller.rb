class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def update
  end

  def create
  end

  def destroy
  end
end
