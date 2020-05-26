class TwetsController < ApplicationController
  before_action :set_twet, only: %i[show edit update destroy]

  # GET /twets
  # GET /twets.json
  def index
    @twets = Twet.all.order('created_at DESC')
    @twet = Twet.new
  end

  # GET /twets/1
  # GET /twets/1.json
  def show
    # comment
  end

  # GET /twets/new
  def new
    @twet = Twet.new
  end

  # GET /twets/1/edit
  def edit
    # comment
  end

  # POST /twets
  # POST /twets.json
  def create
    @twet = Twet.new(twet_params)

    respond_to do |format|
      if @twet.save
        format.html { redirect_to @twet, notice: 'Twet was successfully created.' }
        format.json { render :show, status: :created, location: @twet }
      else
        format.html { render :new }
        format.json { render json: @twet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twets/1
  # PATCH/PUT /twets/1.json
  def update
    respond_to do |format|
      if @twet.update(twet_params)
        format.html { redirect_to @twet, notice: 'Twet was successfully updated.' }
        format.json { render :show, status: :ok, location: @twet }
      else
        format.html { render :edit }
        format.json { render json: @twet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twets/1
  # DELETE /twets/1.json
  def destroy
    @twet.destroy
    respond_to do |format|
      format.html { redirect_to twets_url, notice: 'Twet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_twet
    @twet = Twet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def twet_params
    params.require(:twet).permit(:twet)
  end
end
