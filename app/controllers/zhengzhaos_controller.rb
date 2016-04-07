# encoding: utf-8
class ZhengzhaosController < ApplicationController
  before_action :set_zhengzhao, only: [:show, :edit, :update, :destroy]
  def index
    @zhengzhaos=Zhengzhao.all
    zhengzhaodel = Zhengzhao.find_by(isnew:'1')
    if zhengzhaodel
      zhengzhaodel.destroy
    end
  end





  def show
    @zhengzhao=Zhengzhao.find(params[:id])
    @huojiangzhenshus=@zhengzhao.huojiangzhenshus






  end

  # GET /tests/new
  def new
    @zhengzhao = Zhengzhao.new
    zhengzhao = Zhengzhao.create(isnew:'1')
    redirect_to edit_zhengzhao_path(zhengzhao)
  end

  # GET /tests/1/edit
  def edit
    @zhengzhao=Zhengzhao.find(params[:id])
    @huojiangzhenshus=@zhengzhao.huojiangzhenshus
  end






  # POST /tests
  # POST /tests.json
  def create

     #@zhengzhao = Zhengzhao.create( params[:zhengzhao_params] )
     #@zhengzhao.save
    @zhengzhao = Zhengzhao.new(zhengzhao_params)





    respond_to do |format|
      if @zhengzhao.save
        format.html { redirect_to @zhengzhao, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @zhengzhao }
      else
        format.html { render :new }
        format.json { render json: @zhengzhao.errors, status: :unprocessable_entity }
      end
    end


  end




  def test

    @zhengzhao = Zhengzhao.new(zhengzhao_params)

    respond_to do |format|
      if @zhengzhao.save
        format.html { redirect_to zhengzhaos_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @zhengzhao }
      else
        format.html { render :new }
        format.json { render json: @zhengzhao.errors, status: :unprocessable_entity }
      end
    end



  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @zhengzhao.update(zhengzhao_params)
        format.html { redirect_to edit_zhengzhao_path(@zhengzhao), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @zhengzhao }
      else
        format.html { render :edit }
        format.json { render json: @zhengzhao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @zhengzhao.destroy
    respond_to do |format|
      format.html { redirect_to zhengzhaos_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_zhengzhao
    @zhengzhao = Zhengzhao.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def zhengzhao_params
    params.require(:zhengzhao).permit(:namecompany, :jianjiecompany, :another, :zizhicertification, :anquancertification, :chenbaocertification, :zhanchen, :santixicertification, :shuiwucertification, :dengjicertification, :cwbaobiao, :orgcertification, :wsszhenming,:wpczhenming, :licence, :isnew)
  end



end
