class FlightReservationsController < ApplicationController
  before_action :set_flight_reservation, only: %i[ show edit update destroy ]

  # GET /flight_reservations or /flight_reservations.json
  def index
    @flight_reservations = FlightReservation.all
  end

  # GET /flight_reservations/1 or /flight_reservations/1.json
  def show
  end

  # GET /flight_reservations/new
  def new
    @flight_reservation = FlightReservation.new
  end

  # GET /flight_reservations/1/edit
  def edit
  end

  # POST /flight_reservations or /flight_reservations.json
  def create
    @flight_reservation = FlightReservation.new(flight_reservation_params)

    respond_to do |format|
      if @flight_reservation.save
        format.html { redirect_to @flight_reservation, notice: "Flight reservation was successfully created." }
        format.json { render :show, status: :created, location: @flight_reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flight_reservations/1 or /flight_reservations/1.json
  def update
    respond_to do |format|
      if @flight_reservation.update(flight_reservation_params)
        format.html { redirect_to @flight_reservation, notice: "Flight reservation was successfully updated." }
        format.json { render :show, status: :ok, location: @flight_reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_reservations/1 or /flight_reservations/1.json
  def destroy
    @flight_reservation.destroy
    respond_to do |format|
      format.html { redirect_to flight_reservations_url, notice: "Flight reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_reservation
      @flight_reservation = FlightReservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_reservation_params
      params.require(:flight_reservation).permit(:user_id, :flight_id, :seat_id)
    end
end
