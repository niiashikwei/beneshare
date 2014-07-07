class RequestsController < ApplicationController
  def index
    respond_to do |format|
      format.html { render 'index' }
      format.json { render json: Request.all.as_json }
    end
  end

  def create
    Request.new(params[:request].permit(
      :requestor,
      :location,
      :message,
      :request_type,
      :category,
      :start_date,
      :end_date
    )).save
    redirect_to action: :index
  end
end
