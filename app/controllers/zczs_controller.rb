class ZczsController < ApplicationController

  before_action :set_zcz, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @zczs = Zcz.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @zcz = Zcz.new

  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @zcz = Zcz.new(zcz_params)

    respond_to do |format|
      if @zcz.save
        format.html { redirect_to zczs_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @zcz }
      else
        format.html { render :new }
        format.json { render json: @zcz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @zcz.update(zcz_params)
        format.html { redirect_to zczs_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @zcz }
      else
        format.html { render :edit }
        format.json { render json: @zcz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @zcz.destroy
    respond_to do |format|
      format.html { redirect_to zczs_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_zcz
    @zcz = Zcz.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def zcz_params
    params.require(:zcz).permit(:peo_id,:zcz)
  end

end
