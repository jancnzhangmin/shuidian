class XuelisController < ApplicationController

  before_action :set_xueli, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @xuelis = Xueli.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @xueli = Xueli.new

  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @xueli = Xueli.new(xueli_params)

    respond_to do |format|
      if @xueli.save
        format.html { redirect_to xuelis_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @xueli }
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
      if @xueli.update(xueli_params)
        format.html { redirect_to xuelis_path, notice: 'Test was successfully updated.' }
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
      format.html { redirect_to xuelis_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_xueli
    @xueli = Xueli.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def xueli_params
    params.require(:xueli).permit(:xueli)
  end

end
