class BrReitsController < ApplicationController
  before_action :set_br_reit, only: %i[ show edit update destroy ]

  # GET /br_reits or /br_reits.json
  def index
    @br_reits = BrReit.all
  end

  # GET /br_reits/1 or /br_reits/1.json
  def show
  end

  # GET /br_reits/new
  def new
    @br_reit = BrReit.new
  end

  # GET /br_reits/1/edit
  def edit
  end

  # POST /br_reits or /br_reits.json
  def create
    @br_reit = BrReit.new(br_reit_params)

    respond_to do |format|
      if @br_reit.save
        format.html { redirect_to br_reits_url, notice: "Br reit was successfully created." }
        format.json { render :show, status: :created, location: @br_reit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @br_reit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /br_reits/1 or /br_reits/1.json
  def update
    respond_to do |format|
      if @br_reit.update(br_reit_params)
        format.html { redirect_to br_reits_url, notice: "Br reit was successfully updated." }
        format.json { render :show, status: :ok, location: @br_reit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @br_reit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /br_reits/1 or /br_reits/1.json
  def destroy
    @br_reit.destroy

    respond_to do |format|
      format.html { redirect_to br_reits_url, notice: "Br reit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_br_reit
      @br_reit = BrReit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def br_reit_params
      params.require(:br_reit).permit(:ticker, :price)
    end
end
