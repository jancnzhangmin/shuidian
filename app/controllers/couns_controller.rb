class CounsController < ApplicationController

  before_action :set_coun, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @couns = Coun.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @coun = Coun.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @coun = Coun.new(coun_params)

    respond_to do |format|
      if @coun.save
        format.html { redirect_to couns_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @coun }
      else
        format.html { render :new }
        format.json { render json: @coun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @coun.update(coun_params)
        format.html { redirect_to @coun, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @coun }
      else
        format.html { render :edit }
        format.json { render json: @coun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @coun.destroy
    respond_to do |format|
      format.html { redirect_to couns_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @coun = Coun.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def coun_params
    params.require(:coun).permit(:guojia)
  end

end
