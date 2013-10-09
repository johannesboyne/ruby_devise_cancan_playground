class StatusController < ApplicationController
  def new
  end

  def show
    @status = Status.find(params[:id])
  end

  def index
    @status = Status.find(1)
  end
end
