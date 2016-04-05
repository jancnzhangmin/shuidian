class HuojiangzhenshusController < ApplicationController
  def create
    @zhengzhao=Zhengzhao.find(params[:zhengzhao_id])
    @huojiangzhenshu=@zhengzhao.huojiangzhenshus.create(huojiangzhenshu_params)
    redirect_to zhengzhao_path(@zhengzhao)
  end

  def destroy
    @zhengzhao = Zhengzhao.find(params[:zhengzhao_id_id])
    @huojiangzhenshu = @zhengzhao.huojiangzhenshus.find(params[:id])
    @huojiangzhenshu.destroy
    redirect_to zhengzhao_path(@zhengzhao)
  end

  private
  def huojiangzhenshu_params
    params.require(:huojiangzhenshu).permit(:zhengzhao_id, :zhenshu)
  end

end
