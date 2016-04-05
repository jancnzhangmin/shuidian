class YejiattsController < ApplicationController

  def create
    @yeji=Yeji.find(params[:yeji_id])
    @yejiatt=@yeji.yejiatts.create(yejiatt_params)
    redirect_to yeji_path(@yeji)
  end

  def destroy
    @yeji = Yeji.find(params[:yeji_id])
    @yejiatt = @yeji.yejiatts.find(params[:id])
    @yejiatt.destroy
    redirect_to yeji_path(@yeji)
  end

  private
  def yejiatt_params
      params.require(:yejiatt).permit(:yeji_id, :keyword, :content, :langguage_id)
  end

end
