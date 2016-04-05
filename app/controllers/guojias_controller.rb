class GuojiasController < ApplicationController

  before_action :set_guojia, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @guojias = Guojium.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @guojia = Guojium.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @guojia = Guojium.new(guojia_params)

    respond_to do |format|
      if @guojia.save
        format.html { redirect_to @guojia, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @guojia }
      else
        format.html { render :new }
        format.json { render json: @guojia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @guojia.update(guojia_params)
        format.html { redirect_to @guojia, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @guojia }
      else
        format.html { render :edit }
        format.json { render json: @guojia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @guojia.destroy
    respond_to do |format|
      format.html { redirect_to guojias_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_guojia
    @guojia = Guojium.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def guojia_params
    params.require(:guojia).permit(:guojia)
  end

end
