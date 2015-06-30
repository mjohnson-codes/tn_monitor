class DTsController < ApplicationController
  before_action :set_dt, only: [:show, :edit, :update, :destroy]

  # GET /dts
  # GET /dts.json
  def index
    @dts = Dts.all
  end

  # GET /dts/1
  # GET /dts/1.json
  def show
  end

  # GET /dts/new
  def new
    @dt = Dts.new
  end

  # GET /dts/1/edit
  def edit
  end

  # POST /dts
  # POST /dts.json
  def create
    @dt = Dts.new(dt_params)

    respond_to do |format|
      if @dt.save
        format.html { redirect_to @dt, notice: 'Dts was successfully created.' }
        format.json { render :show, status: :created, location: @dt }
      else
        format.html { render :new }
        format.json { render json: @dt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dts/1
  # PATCH/PUT /dts/1.json
  def update
    respond_to do |format|
      if @dt.update(dt_params)
        format.html { redirect_to @dt, notice: 'Dts was successfully updated.' }
        format.json { render :show, status: :ok, location: @dt }
      else
        format.html { render :edit }
        format.json { render json: @dt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dts/1
  # DELETE /dts/1.json
  def destroy
    @dt.destroy
    respond_to do |format|
      format.html { redirect_to dts_index_url, notice: 'Dts was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dt
      @dt = Dts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dt_params
      params.require(:dt).permit(:document_name, :version, :go_live_date, :transfer_id)
    end
end
