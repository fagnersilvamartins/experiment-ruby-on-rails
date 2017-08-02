class ProcuctsController < ApplicationController
  before_action :set_procuct, only: [:show, :edit, :update, :destroy]

  # GET /procucts
  # GET /procucts.json
  def index
    @procucts = Procuct.all
  end

  # GET /procucts/1
  # GET /procucts/1.json
  def show
  end

  # GET /procucts/new
  def new
    @procuct = Procuct.new
  end

  # GET /procucts/1/edit
  def edit
  end

  # POST /procucts
  # POST /procucts.json
  def create
    @procuct = Procuct.new(procuct_params)

    respond_to do |format|
      if @procuct.save
        format.html { redirect_to @procuct, notice: 'Procuct was successfully created.' }
        format.json { render :show, status: :created, location: @procuct }
      else
        format.html { render :new }
        format.json { render json: @procuct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procucts/1
  # PATCH/PUT /procucts/1.json
  def update
    respond_to do |format|
      if @procuct.update(procuct_params)
        format.html { redirect_to @procuct, notice: 'Procuct was successfully updated.' }
        format.json { render :show, status: :ok, location: @procuct }
      else
        format.html { render :edit }
        format.json { render json: @procuct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procucts/1
  # DELETE /procucts/1.json
  def destroy
    @procuct.destroy
    respond_to do |format|
      format.html { redirect_to procucts_url, notice: 'Procuct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procuct
      @procuct = Procuct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procuct_params
      params.require(:procuct).permit(:name)
    end
end
