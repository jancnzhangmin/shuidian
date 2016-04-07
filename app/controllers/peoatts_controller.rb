class PeoattsController < ApplicationController

  def create
    @peo=Peo.find(params[:peo_id])
    @peoatt=@peo.peoatts.create(peoatt_params)
    redirect_to edit_peo_path(@peo)
  end

  def destroy
    @peo = Peo.find(params[:peo_id])
    @peoatt = @peo.peoatts.find(params[:id])
    @peoatt.destroy
    redirect_to edit_peo_path(@peo)
  end

  private
  def peoatt_params
    params.require(:peoatt).permit(:peo_id, :keyword, :attch)
  end

end
