class XmcounsController < ApplicationController

  before_action :set_xmcoun, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @xmcouns = Xmcoun.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @xmcoun = Xmcoun.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @xmcoun = Xmcoun.new(xmcoun_params)

    respond_to do |format|
      if @xmcoun.save
        format.html { redirect_to xmcouns_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @xmcoun }
      else
        format.html { render :new }
        format.json { render json: @xmcoun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @xmcoun.update(xmcoun_params)
        format.html { redirect_to @xmcoun, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @xmcoun }
      else
        format.html { render :edit }
        format.json { render json: @xmcoun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @xmcoun.destroy
    respond_to do |format|
      format.html { redirect_to xmcouns_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_xmcoun
    @xmcoun = Xmcoun.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def xmcoun_params
    params.require(:xmcoun).permit(:coun)
  end

end
