class GuojiumsController < ApplicationController

  before_action :set_guojium, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @guojiums = Guojium.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @guojium = Guojium.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @guojium = Guojium.new(guojium_params)

    respond_to do |format|
      if @guojium.save
        format.html { redirect_to @guojium, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @guojium }
      else
        format.html { render :new }
        format.json { render json: @guojium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @guojium.update(guojium_params)
        format.html { redirect_to @guojium, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @guojium }
      else
        format.html { render :edit }
        format.json { render json: @guojium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @guojium.destroy
    respond_to do |format|
      format.html { redirect_to guojiums_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_guojium
    @guojium = Guojium.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def guojium_params
    params.require(:guojium).permit(:guojia)
  end

end
