class HomeController < ApplicationController
  before_action :authenticate_user!, only: :token

  def token
  end

  def index
    @test = "hallo welt"
    @status = Status.find(1)
  end

end
