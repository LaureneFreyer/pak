class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
