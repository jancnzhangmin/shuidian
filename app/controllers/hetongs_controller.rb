class HetongsController < ApplicationController
  before_action :set_hetong, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @hetongs = Hetong.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @hetong = Hetong.new

  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @hetong = Hetong.new(hetong_params)

    respond_to do |format|
      if @hetong.save
        format.html { redirect_to hetongs_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @hetong }
      else
        format.html { render :new }
        format.json { render json: @hetong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @hetong.update(hetong_params)
        format.html { redirect_to hetongs_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @hetong }
      else
        format.html { render :edit }
        format.json { render json: @hetong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @hetong.destroy
    respond_to do |format|
      format.html { redirect_to hetongs_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_hetong
    @hetong = Hetong.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def hetong_params
    params.require(:hetong).permit(:hetong)
  end
end
