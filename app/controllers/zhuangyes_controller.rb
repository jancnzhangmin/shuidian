class ZhuangyesController < ApplicationController

  before_action :set_zhuangye, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @zhuangyes = Zhuangye.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @zhuangye = Zhuangye.new

  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @zhuangye = Zhuangye.new(zhuangye_params)

    respond_to do |format|
      if @zhuangye.save
        format.html { redirect_to zhuangyes_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @zhuangye }
      else
        format.html { render :new }
        format.json { render json: @zhuangye.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @zhuangye.update(zhuangye_params)
        format.html { redirect_to zhuangyes_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @zhuangye }
      else
        format.html { render :edit }
        format.json { render json: @zhuangye.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @zhuangye.destroy
    respond_to do |format|
      format.html { redirect_to zhuangyes_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_zhuangye
    @zhuangye = Zhuangye.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def zhuangye_params
    params.require(:zhuangye).permit(:zhuangye)
  end

end
