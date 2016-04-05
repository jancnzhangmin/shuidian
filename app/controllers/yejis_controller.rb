class YejisController < ApplicationController

  before_action :set_yeji, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @yejis = Yeji.all
    @hetongs= Hetong.all
    @guojias = Coun.all
    @yejiatts = Yejiatt.all
    @languages = Language.all
    @projecttypes = Projecttype.all



















  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    @yeji=Yeji.find(params[:id])
    @yejiatts=@yeji.yejiatts
    @hetong=Hetong.find(@yeji.hetong_id)
    @coun=Coun.find(@yeji.guojia_id)
    @projecttype=Projecttype.find(@yeji.projecttype_id)
    @juese=Juese.find(@yeji.juese_id)
    @languages = Language.all
  end

  # GET /tests/new
  def new
    @yeji = Yeji.new
    @hetongs=Hetong.all
    @guojias=Coun.all
    @projecttypes=Projecttype.all
    @jueses = Juese.all
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @yeji = Yeji.new(yeji_params)

    respond_to do |format|
      if @yeji.save
        format.html { redirect_to @yeji, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @yeji }
      else
        format.html { render :new }
        format.json { render json: @yeji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @yeji.update(yeji_params)
        format.html { redirect_to @yeji, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @yeji }
      else
        format.html { render :edit }
        format.json { render json: @yeji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @yeji.destroy
    respond_to do |format|
      format.html { redirect_to yejis_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_yeji
    @yeji = Yeji.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def yeji_params
    params.require(:yeji).permit(:hetong_id, :guojia_id, :projecttype_id, :juese_id, :nameproject, :gongqi, :hetonge, :nameyezhu, :addressyezhu,:telyezhu, :fukunprice, :shishidanwei, :meiyuan)
  end

end
