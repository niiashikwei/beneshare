class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def create
    Request.new(params[:request].permit(
      :requestor,
      :location,
      :message,
      :request_type,
      :start_date,
      :end_date
    )).save
    redirect_to action: :index
  end
end
