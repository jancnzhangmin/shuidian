# encoding: utf-8
class PeosController < ApplicationController

  before_action :set_peo, only: [:show, :edit, :update, :destroy]
  def index

    peodel = Peo.find_by(isnew:'1')
    if peodel
      peodel.destroy
    end

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

    if params[:zhuanye_id] !="" && params[:zhuanye_id] !=nil
      if params[:zhuanye_id].include?":"
        zhuanyesplit = params[:zhuanye_id].split(':')
        myselect = myselect + " and zhuangye_id in("
        zhuanyesplit.each{|f|
          myselect = myselect +f + ","
        }
        myselect = myselect.chop
        myselect = myselect + ")"
      else
        if params[:zhuanye_id] !="0"
        myselect=myselect+" and zhuangye_id ="+params[:zhuanye_id]
          end
      end
    end
    # if params[:zhuanye_id].to_i>0
    #   myselect=myselect+" and zhuangye_id ="+params[:zhuanye_id]
    # end
    #
    if params[:xueli_id] !="" && params[:xueli_id] !=nil
      if params[:xueli_id].include?":"
        xuelisplit = params[:xueli_id].split(':')
        myselect = myselect + " and xueli_id in("
        xuelisplit.each{|f|
          myselect = myselect +f + ","
        }
        myselect = myselect.chop
        myselect = myselect + ")"
      else
        if params[:xueli_id] !="0"
          myselect=myselect+" and xueli_id ="+params[:xueli_id]
        end
      end
    end

    if params[:zhicheng_id] !="" && params[:zhicheng_id] !=nil
      if params[:zhicheng_id].include?":"
        zhichengsplit = params[:zhicheng_id].split(':')
        myselect = myselect + " and zhicheng_id in("
        zhichengsplit.each{|f|
          myselect = myselect +f + ","
        }
        myselect = myselect.chop
        myselect = myselect + ")"
      else
        if params[:zhicheng_id] !="0"
          myselect=myselect+" and zhicheng_id ="+params[:zhicheng_id]
        end
      end
    end

    if params[:zczzy_id] !="" && params[:zczzy_id] !=nil
      if params[:zczzy_id].include?":"
        zczzysplit = params[:zczzy_id].split(':')
        myselect = myselect + " and zcz_id in("
        zczzysplit.each{|f|
          myselect = myselect +f + ","
        }
        myselect = myselect.chop
        myselect = myselect + ")"
      else
        if params[:zczzy_id] !="0"
          myselect=myselect+" and zcz_id ="+params[:zczzy_id]
        end
      end
    end

    if params[:worktime] != nil
      myselect=myselect+" and worktime >="+'"' + params[:worktime] +'"'
    end

    @peos=Peo.find_by_sql(myselect)

@testsql = myselect

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
    peo = Peo.create(isnew:'1')
    redirect_to edit_peo_path(peo)
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
        format.html { redirect_to edit_peo_path(@peo), notice: 'Test was successfully updated.' }
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
    params.require(:peo).permit(:zhuangye_id, :zcz_id, :xueli_id, :zhicheng_id, :name, :sex, :birthday, :worktime, :school, :other, :schoolgra, :xuelicertification, :zhichencertification, :zigecertification,:shenfencertification, :anquancertification, :gongzhenmaterial, :isnew)
  end

end
