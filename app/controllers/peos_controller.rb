# encoding: utf-8
class PeosController < ApplicationController

  before_action :set_peo, only: [:show, :edit, :update, :destroy]
  def index

    @peos=Peo.all
    @zhuangyes=Zhuangye.all
    @xuelis=Xueli.all
    @zhichengs=Zhicheng.all
    @zczs=Zcz.all

    @zhuanye_name=""
if params[:name] !=nil
  @zhuanye_name=params[:name]
end


    myselect = 'select * from peos where name like '+'"%'+ @zhuanye_name +'%"'
    if params[:zhuanye_id].to_i>0
      myselect=myselect+" and zhuangye_id ="+params[:zhuanye_id]
    end

    if params[:xueli_id].to_i>0
      myselect=myselect+" and xueli_id ="+params[:xueli_id]
    end

    if params[:zhicheng_id].to_i>0
      myselect=myselect+" and zhicheng_id ="+params[:zhicheng_id]
    end

    if params[:zczzy_id].to_i>0
      myselect=myselect+" and zcz_id ="+params[:zczzy_id]
    end

    @peos=Peo.find_by_sql(myselect)

  end




  def show

    @peo=Peo.find(params[:id])
    @zhuangye=Zhuangye.find(@peo.zhuangye_id)
    @xueli=Xueli.find(@peo.xueli_id)
    @zhicheng=Zhicheng.find(@peo.zhicheng_id)
    @zcz=Zcz.find(@peo.zcz_id)
    #@huojiangzhenshus=@zhengzhao.huojiangzhenshus





  end

  # GET /tests/new
  def new
    @peo = Peo.new
    @zhuangyes=Zhuangye.all
    @xuelis=Xueli.all
    @zhichengs=Zhicheng.all
    @zczs=Zcz.all
  end

  # GET /tests/1/edit
  def edit
    @peo=Peo.find(params[:id])
    @zhuangyes=Zhuangye.all
    @xuelis=Xueli.all
    @zhichengs=Zhicheng.all
    @zczs=Zcz.all
    #@huojiangzhenshus=@zhengzhao.huojiangzhenshus
  end






  # POST /tests
  # POST /tests.json
  def create

    #@zhengzhao = Zhengzhao.create( params[:zhengzhao_params] )
    #@zhengzhao.save
    @peo = Peo.new(peo_params)





    respond_to do |format|
      if @peo.save
        format.html { redirect_to @peo, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @peo }
      else
        format.html { render :new }
        format.json { render json: @peo.errors, status: :unprocessable_entity }
      end
    end


  end






  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @peo.update(peo_params)
        format.html { redirect_to @peo, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @peo }
      else
        format.html { render :edit }
        format.json { render json: @peo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @peo.destroy
    respond_to do |format|
      format.html { redirect_to peos_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_peo
    @peo = Peo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def peo_params
    params.require(:peo).permit(:zhuangye_id, :zcz_id, :xueli_id, :zhicheng_id, :name, :sex, :birthday, :worktime, :school, :other, :schoolgra, :xuelicertification, :zhichencertification, :zigecertification,:shenfencertification, :anquancertification, :gongzhenmaterial)
  end

end
