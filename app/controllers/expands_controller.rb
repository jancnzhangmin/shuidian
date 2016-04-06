class ExpandsController < ApplicationController

  def create
    @yeji=Yeji.find(params[:yeji_id])
    @expand=@yeji.expands.create(expand_params)
    redirect_to edit_yeji_path(@yeji)
  end

  def destroy
    @yeji = Yeji.find(params[:yeji_id])
    @expand = @yeji.expands.find(params[:id])
    @expand.destroy
    redirect_to edit_yeji_path(@yeji)
  end

  private
  def expand_params
    params.require(:expand).permit(:yeji_id, :expandname, :expand)
  end

end
