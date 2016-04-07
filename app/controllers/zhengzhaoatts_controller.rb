class ZhengzhaoattsController < ApplicationController

  def create
    @zhengzhao=Zhengzhao.find(params[:zhengzhao_id])
    @zhengzhaoatt=@zhengzhao.zhengzhaoatts.create(zhengzhaoatt_params)
    redirect_to edit_zhengzhao_path(@zhengzhao)
  end

  def destroy
    @zhengzhao = Zhengzhao.find(params[:zhengzhao_id])
    @zhengzhaoatt = @zhengzhao.zhengzhaoatts.find(params[:id])
    @zhengzhaoatt.destroy
    redirect_to edit_zhengzhao_path(@zhengzhao)
  end

  private
  def zhengzhaoatt_params
    params.require(:zhengzhaoatt).permit(:zhengzhao_id, :keyword, :attch)
  end

end
