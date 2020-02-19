class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    if @flat.save
      redirect_to flat_path(@flat)
    else
      @flat.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, notice: 'Flat was successfully deleted.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flat_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    end
end
