class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def create
    Request.new(params[:request].permit(:description)).save
    redirect_to action: :index
  end
end
