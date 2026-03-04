class EnsemblesController < ApplicationController
  before_action :set_ensemble, only: %i[show edit update destroy]

  # GET /ensembles or /ensembles.json
  def index
    @ensembles = Ensemble.order(:name).all
  end

  # GET /ensembles/1 or /ensembles/1.json
  def show
  end

  # GET /ensembles/new
  def new
    @ensemble = Ensemble.new
  end

  # GET /ensembles/1/edit
  def edit
  end

  # POST /ensembles or /ensembles.json
  def create
    @ensemble = Ensemble.new(ensemble_params)

    respond_to do |format|
      if @ensemble.save
        format.html { redirect_to @ensemble, notice: "Ensemble was successfully created." }
        format.json { render :show, status: :created, location: @ensemble }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ensemble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ensembles/1 or /ensembles/1.json
  def update
    respond_to do |format|
      if @ensemble.update(ensemble_params)
        format.html { redirect_to @ensemble, notice: "Ensemble was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @ensemble }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ensemble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ensembles/1 or /ensembles/1.json
  def destroy
    @ensemble.destroy!

    respond_to do |format|
      format.html { redirect_to ensembles_path, notice: "Ensemble was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ensemble
    @ensemble = Ensemble.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ensemble_params
    params.require(:ensemble).permit(:name, :website, :email)
  end
end
