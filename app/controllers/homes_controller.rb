class HomesController < ApplicationController

  def top
    @items = Items.find(params[:id])
  end

  def about
  end

end
