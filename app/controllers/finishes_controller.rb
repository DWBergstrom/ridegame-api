class FinishesController < ApplicationController
  before_action :set_finish, only: [:show, :update, :destroy]

  # GET /finishes
  def index
    @finishes = Finish.all

    render json: @finishes
  end

  # GET /finishes/1
  def show
    render json: @finish
  end

  # POST /finishes
  def create
    @finish = Finish.new(finish_params)

    if @finish.save
      render json: @finish, status: :created, location: @finish
    else
      render json: @finish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /finishes/1
  def update
    if @finish.update(finish_params)
      render json: @finish
    else
      render json: @finish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /finishes/1
  def destroy
    @finish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finish
      @finish = Finish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def finish_params
      params.require(:finish).permit(:user_id, :ride_id, :notes, :date, :duration)
    end
end