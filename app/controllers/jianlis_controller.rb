class JianlisController < ApplicationController

  def create
    @peo=Peo.find(params[:peo_id])
    @jianli=@peo.jianlis.create(jianli_params)
    redirect_to peo_path(@peo)
  end

  def destroy
    @peo = Peo.find(params[:peo_id])
    @jianli = @peo.jianlis.find(params[:id])
    @jianli.destroy
    redirect_to peo_path(@peo)
  end

  private
  def jianli_params
    params.require(:jianli).permit(:peo_id, :jianliname, :jianli)
  end

end
