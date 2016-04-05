class PersonsController < ApplicationController

  before_action :set_person, only: [:show, :edit, :update, :destroy]
  def index
    @persons=Person.all
  end





  def show
    @person=Person.find(params[:id])
    #@huojiangzhenshus=@zhengzhao.huojiangzhenshus





  end

  # GET /tests/new
  def new
    @person = Person.new
  end

  # GET /tests/1/edit
  def edit
    @person=Person.find(params[:id])
    #@huojiangzhenshus=@zhengzhao.huojiangzhenshus
  end






  # POST /tests
  # POST /tests.json
  def create

    #@zhengzhao = Zhengzhao.create( params[:zhengzhao_params] )
    #@zhengzhao.save
    @zhengzhao = Zhengzhao.new(zhengzhao_params)





    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end


  end






  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to persons_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def person_params
    params.require(:zhengzhao).permit(:namecompany, :jianjiecompany, :another, :zizhicertification, :anquancertification, :chenbaocertification, :zhanchen, :santixicertification, :shuiwucertification, :dengjicertification, :cwbaobiao, :orgcertification, :wsszhenming,:wpczhenming, :licence)
  end

end
