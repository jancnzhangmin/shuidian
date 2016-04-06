class XmattsController < ApplicationController
  def create
    @xmjianli=Xmjianli.find(params[:xmjianli_id])
    @xmatt=@xmjianli.xmatts.create(xmatt_params)
    redirect_to edit_xmjianli_path(@xmjianli)
  end

  def destroy
    @xmjianli = Xmjianli.find(params[:xmjianli_id])
    @xmatt = @xmjianli.xmatts.find(params[:id])
    @xmatt.destroy
    redirect_to edit_xmjianli_path(@xmatt)
  end

  private
  def xmatt_params
    params.require(:xmatt).permit(:xmjianli_id, :name, :attch)
  end
end
