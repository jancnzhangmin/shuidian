class XmlanguagesController < ApplicationController

  before_action :set_xmlanguage, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @xmlanguages = Xmlanguage.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @xmlanguage = Xmlanguage.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @xmlanguage = Xmlanguage.new(xmlanguage_params)

    respond_to do |format|
      if @xmlanguage.save
        format.html { redirect_to xmlanguages_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @xmlanguage }
      else
        format.html { render :new }
        format.json { render json: @xmlanguage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @xmlanguage.update(xmlanguage_params)
        format.html { redirect_to @xmlanguage, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @xmlanguage }
      else
        format.html { render :edit }
        format.json { render json: @xmlanguage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @xmlanguage.destroy
    respond_to do |format|
      format.html { redirect_to xmlanguages_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_language
    @xmlanguage = Xmlanguage.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def xmlanguage_params
    params.require(:xmlanguage).permit(:language)
  end

end
