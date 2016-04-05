class ZhichengsController < ApplicationController

  before_action :set_zhicheng, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @zhichengs = Zhicheng.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @zhicheng = Zhicheng.new

  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @zhicheng = Zhicheng.new(zhicheng_params)

    respond_to do |format|
      if @zhicheng.save
        format.html { redirect_to zhichengs_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @zhicheng }
      else
        format.html { render :new }
        format.json { render json: @zhicheng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @zhicheng.update(zhicheng_params)
        format.html { redirect_to zhichengs_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @zhicheng }
      else
        format.html { render :edit }
        format.json { render json: @zhicheng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @zhicheng.destroy
    respond_to do |format|
      format.html { redirect_to zhichengs_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_zhicheng
    @zhicheng = Zhicheng.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def zhicheng_params
    params.require(:zhicheng).permit(:zhicheng)
  end

end
