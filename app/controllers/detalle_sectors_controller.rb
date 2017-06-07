class DetalleSectorsController < ApplicationController
  before_action :set_detalle_sector, only: [:show, :edit, :update, :destroy]

  # GET /detalle_sectors
  # GET /detalle_sectors.json
  def index
    @detalle_sectors = DetalleSector.all
  end

  # GET /detalle_sectors/1
  # GET /detalle_sectors/1.json
  def show
  end

  # GET /detalle_sectors/new
  def new
    @detalle_sector = DetalleSector.new
  end

  # GET /detalle_sectors/1/edit
  def edit
  end

  # POST /detalle_sectors
  # POST /detalle_sectors.json
  def create
    @detalle_sector = DetalleSector.new(detalle_sector_params)

    respond_to do |format|
      if @detalle_sector.save
        format.html { redirect_to @detalle_sector, notice: 'Detalle sector was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_sector }
      else
        format.html { render :new }
        format.json { render json: @detalle_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_sectors/1
  # PATCH/PUT /detalle_sectors/1.json
  def update
    respond_to do |format|
      if @detalle_sector.update(detalle_sector_params)
        format.html { redirect_to @detalle_sector, notice: 'Detalle sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_sector }
      else
        format.html { render :edit }
        format.json { render json: @detalle_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_sectors/1
  # DELETE /detalle_sectors/1.json
  def destroy
    @detalle_sector.destroy
    respond_to do |format|
      format.html { redirect_to detalle_sectors_url, notice: 'Detalle sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_sector
      @detalle_sector = DetalleSector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_sector_params
      params.require(:detalle_sector).permit(:sector, :empleado)
    end
end
