class EvaluosController < ApplicationController
  before_action :set_evaluo, only: [:show, :edit, :update, :destroy]

  # GET /evaluos
  # GET /evaluos.json
  def index
    @evaluos = Evaluo.all
  end

  # GET /evaluos/1
  # GET /evaluos/1.json
  def show
  end

  # GET /evaluos/new
  def new
    @evaluo = Evaluo.new
  end

  # GET /evaluos/1/edit
  def edit
  end

  # POST /evaluos
  # POST /evaluos.json
  def create
    @evaluo = Evaluo.new(evaluo_params)

    respond_to do |format|
      if @evaluo.save
        format.html { redirect_to @evaluo, notice: 'Evaluo was successfully created.' }
        format.json { render :show, status: :created, location: @evaluo }
      else
        format.html { render :new }
        format.json { render json: @evaluo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluos/1
  # PATCH/PUT /evaluos/1.json
  def update
    respond_to do |format|
      if @evaluo.update(evaluo_params)
        format.html { redirect_to @evaluo, notice: 'Evaluo was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluo }
      else
        format.html { render :edit }
        format.json { render json: @evaluo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluos/1
  # DELETE /evaluos/1.json
  def destroy
    @evaluo.destroy
    respond_to do |format|
      format.html { redirect_to evaluos_url, notice: 'Evaluo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluo
      @evaluo = Evaluo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluo_params
      params.require(:evaluo).permit(:tipo, :Activo, :integer, :descripcion, :montoactual, :fecha)
    end
end
