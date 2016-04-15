class YejisController < ApplicationController

  before_action :set_yeji, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index


    yejisdel= Yeji.find_by(isnew:'1')
    if yejisdel
yejisdel.destroy
end




    @yejis = Yeji.all
    @hetongs= Hetong.all
    @guojias = Coun.all
    @yejiatts = Yejiatt.all
    @languages = Language.all
    @projecttypes = Projecttype.all
    @ssdws = Ssdw.all



    @ssdw=params[:ssdw]


    myselect ='select * from yejis where isnew = "0" '

    if params[:ssdw_id] && params[:ssdw_id] > '0'
      myselect = myselect + ' and ssdw_id = '+ params[:ssdw_id]
    end

    if params[:xm_id] && params[:xm_id] >'0'
      myselect = myselect + ' and projecttype_id = '+params[:xm_id]
    end

    if params[:hetong_id] && params[:hetong_id] > '0'
      myselect = myselect + ' and hetong_id = '+params[:hetong_id]
    end

    if params[:guojia_id] && params[:guojia_id] > '0'
      myselect = myselect + ' and guojia_id = '+params[:guojia_id]
    end
    if params[:rmb] && params[:rmb] > '0'
      myselect = myselect + ' and hetonge >='+params[:rmb]
    end
    if params[:usd] && params[:usd] > '0'
      myselect = myselect + ' and meiyuan >='+params[:usd]
    end
    if params[:gongqi] && params[:gongqi] != ''
      myselect = myselect + ' and gongqi >='+params[:gongqi]
    end
if (params[:fromtime]!=nil)
  fromyear =  params[:fromtime]
  endyear =  params[:endtime]

if fromyear != "" && endyear != ""
  myselect = myselect + ' and begindate >= ' + "'" + fromyear.to_s + "'"  + ' and enddate <=' +  "'" + endyear.to_s + "'"
elsif fromyear && fromyear != ""

  myselect = myselect + ' and begindate >= '+  "'" + fromyear.to_s + "'"
elsif  endyear && endyear != ""
  myselect = myselect + ' and enddate <= '+  "'" + endyear.to_s + "'"

end



  @yejis=Yeji.find_by_sql(myselect)




end













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
    @ssdw = Ssdw.find(@yeji.ssdw_id)
  end

  # GET /tests/new
  def new
    @yeji = Yeji.new
    @hetongs=Hetong.all
    @guojias=Coun.all
    @projecttypes=Projecttype.all
    @jueses = Juese.all

    yeji=Yeji.create(isnew:'1')
    redirect_to edit_yeji_path(yeji)



  end

  # GET /tests/1/edit
  def edit
    @yeji=Yeji.find(params[:id])
    @yejiatts=@yeji.yejiatts
    @hetongs=Hetong.all
    @guojias=Coun.all
    @projecttypes=Projecttype.all
    @jueses=Juese.all
    @languages = Language.all
    @ssdws = Ssdw.all
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
        format.html { redirect_to edit_yeji_path(@yeji), notice: 'Test was successfully updated.' }
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
    params.require(:yeji).permit(:ssdw_id, :hetong_id, :guojia_id, :projecttype_id, :juese_id, :nameproject, :gongqi, :hetonge, :nameyezhu, :addressyezhu,:telyezhu, :fukunprice, :shishidanwei, :meiyuan, :isnew, :begindate, :enddate)
  end

end
