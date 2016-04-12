class YejiattsController < ApplicationController
  before_action :set_yejiatt, only: [:show, :edit, :update, :destroy]

  def edit
    @languages = Language.all
  end

  def update
    respond_to do |format|
      if @yejiatt.update(yejiatt_params)
        format.html { redirect_to edit_yeji_path(@yeji), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @xueli }
      else
        format.html { render :edit }
        format.json { render json: @xueli.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @yeji=Yeji.find(params[:yeji_id])
    @yejiatt=@yeji.yejiatts.create(yejiatt_params)
    redirect_to edit_yeji_path(@yeji)
  end

  def destroy
    @yeji = Yeji.find(params[:yeji_id])
    @yejiatt = @yeji.yejiatts.find(params[:id])
    @yejiatt.destroy
    redirect_to edit_yeji_path(@yeji)
  end

  private

  def set_yejiatt
    @yeji = Yeji.find(params[:yeji_id])
    @yejiatt = @yeji.yejiatts.find(params[:id])
  end

  def yejiatt_params
      params.require(:yejiatt).permit(:yeji_id, :keyword, :content, :langguage_id)
  end

end
