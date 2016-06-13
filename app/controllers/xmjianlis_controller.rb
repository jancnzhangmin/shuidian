class XmjianlisController < ApplicationController

  before_action :set_xmjianli, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index

    deljianli = Xmjianli.find_by(isnew:'1')
    if deljianli
      deljianli.destroy
    end

    @xmjianlis = Xmjianli.all
    @languages = Xmlanguage.all
    @couns = Xmcoun.all


    @xm=params[:xm]
    if !@xm
      @xm=''
    end


    myselect = 'select * from xmjianlis where name like '+'"%'+ @xm +'%"'



    if params[:coun_id] !="" && params[:coun_id] !=nil
      if params[:coun_id].include?":"
        counsplit = params[:coun_id].split(':')
        myselect = myselect + " and xmcoun_id in("
        counsplit.each{|f|
          myselect = myselect +f + ","
        }
        myselect = myselect.chop
        myselect = myselect + ")"
      else
        if params[:coun_id] !="0"
          myselect=myselect+" and xmcoun_id ="+params[:coun_id]
        end
      end
    end



    if params[:language_id] !="" && params[:language_id] !=nil
      if params[:language_id].include?":"
        languagesplit = params[:language_id].split(':')
        myselect = myselect + " and xmlanguage_id in("
        languagesplit.each{|f|
          myselect = myselect +f + ","
        }
        myselect = myselect.chop
        myselect = myselect + ")"
      else
        if params[:language_id] !="0"
          myselect=myselect+" and xmlanguage_id ="+params[:language_id]
        end
      end
    end

    @xmjianlis=Xmjianli.find_by_sql(myselect)

  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    @languages = Xmlanguage.all
    @couns = Xmcoun.all
  end

  # GET /tests/new
  def new
    #@xmjianli = Xmjianli.new
    xmjianli = Xmjianli.create(isnew:'1')
    redirect_to edit_xmjianli_path(xmjianli)
  end

  # GET /tests/1/edit
  def edit
    @languages = Xmlanguage.all
    @couns = Xmcoun.all
  end

  # POST /tests
  # POST /tests.json
  def create
    @xmjianli = Xmjianli.new(xmjianli_params)

    respond_to do |format|
      if @xmjianli.save
        format.html { redirect_to xmjianlis_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @xmjianli }
      else
        format.html { render :new }
        format.json { render json: @xmjianli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @xmjianli.update(xmjianli_params)
        format.html { redirect_to edit_xmjianli_path(@xmjianli), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @xmjianli }
      else
        format.html { render :edit }
        format.json { render json: @xmjianli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @xmjianli.destroy
    respond_to do |format|
      format.html { redirect_to xmjianlis_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_xmjianli
    @xmjianli = Xmjianli.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def xmjianli_params
    params.require(:xmjianli).permit(:name, :xmlanguage_id, :xmcoun_id, :isnew)
  end

end
