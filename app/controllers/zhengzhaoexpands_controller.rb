class ZhengzhaoexpandsController < ApplicationController

  def create
    @zhengzhao=Zhengzhao.find(params[:zhengzhao_id])
    @expand=@zhengzhao.zhengzhaoexpands.create(zhengzhaoexpand_params)
    redirect_to edit_zhengzhao_path(@zhengzhao)
  end

  def destroy
    @zhengzhao = Zhengzhao.find(params[:zhengzhao_id])
    @zhengzhaoexpand = @zhengzhao.zhengzhaoexpands.find(params[:id])
    @zhengzhaoexpand.destroy
    redirect_to edit_zhengzhao_path(@zhengzhao)
  end

  private
  def zhengzhaoexpand_params
    params.require(:zhengzhaoexpand).permit(:zhengzhao_id, :keyword, :expand)
  end

end
