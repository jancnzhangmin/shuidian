class SsdwsController < ApplicationController

  before_action :set_ssdw, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @ssdws = Ssdw.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @ssdw = Ssdw.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @ssdw = Ssdw.new(ssdw_params)

    respond_to do |format|
      if @ssdw.save
        format.html { redirect_to ssdws_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @ssdw }
      else
        format.html { render :new }
        format.json { render json: @ssdw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @ssdw.update(ssdw_params)
        format.html { redirect_to @ssdw, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @ssdw }
      else
        format.html { render :edit }
        format.json { render json: @ssdw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @ssdw.destroy
    respond_to do |format|
      format.html { redirect_to ssdws_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_ssdw
    @ssdw = Ssdw.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ssdw_params
    params.require(:ssdw).permit(:name)
  end

end
