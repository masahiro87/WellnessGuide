class ReservationsController < ApplicationController
    before_action :authenticate_user!

  def create
    @reservation = current_user.reservations.create(reservation_params)

    redirect_to @reservation.listing, notice: "予約が完了しました"
  end


  private
    def reservation_params
      # コミッション費等　params.require(:reservation).permit(:date, :adults, :children, :infants, :participants, :price, :commission, :total_price, :listing_id)
      params.require(:reservation).permit(:date, :price, :total_price, :participants, :listing_id)
    end

end
