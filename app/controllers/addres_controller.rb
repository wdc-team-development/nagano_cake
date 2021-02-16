class AddresController < ApplicationController

  def index
    @addres = Addre.all
    @addre = Addre.new(params[:id])
  end

  def create
    @addre = Addre.new(addre_params)
    redirect_to addres_path
  end

  def edit
    @addres = Addre.find(params[:id])
  end

  def update
    @addres = Addre.find(params[:id])
    @addre.update(addre_params)
    redirect_to addres_path
  end

  def destroy
    @addre = Addre.find(params[:id])
    @addre.destroy
    redirect_to addres_path
  end

  private
  def addre_params
    params.require(:addre).permit(:postal_code, :address, :name)
  end

end
