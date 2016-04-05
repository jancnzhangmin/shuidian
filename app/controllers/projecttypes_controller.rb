class ProjecttypesController < ApplicationController

  before_action :set_projecttype, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @projecttypes = Projecttype.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @projecttype = Projecttype.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @projecttype = Projecttype.new(projecttype_params)

    respond_to do |format|
      if @projecttype.save
        format.html { redirect_to projecttypes_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @projecttype }
      else
        format.html { render :new }
        format.json { render json: @projecttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @coun.update(projecttype_params)
        format.html { redirect_to @projecttype, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @projecttype }
      else
        format.html { render :edit }
        format.json { render json: @projecttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @projecttype.destroy
    respond_to do |format|
      format.html { redirect_to projecttypes_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @projecttype = Projecttype.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def projecttype_params
    params.require(:projecttype).permit(:projecttype)
  end

end
