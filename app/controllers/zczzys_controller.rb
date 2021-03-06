class ZczzysController < ApplicationController

  before_action :set_zczzy, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @zczzys = Zczzy.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @zczzy = Zczzy.new

  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @zczzy = Zczzy.new(zczzy_params)

    respond_to do |format|
      if @xueli.save
        format.html { redirect_to zczzys_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @zczzy }
      else
        format.html { render :new }
        format.json { render json: @xueli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @xueli.update(zczzy_params)
        format.html { redirect_to zczzys_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @xueli }
      else
        format.html { render :edit }
        format.json { render json: @xueli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @xueli.destroy
    respond_to do |format|
      format.html { redirect_to zczzys_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_zczzy
    @zczzy = Zczzy.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def zczzy_params
    params.require(:zczzy).permit(:peo_id,:zczzy)
  end

end
