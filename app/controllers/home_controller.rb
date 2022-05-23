class HomeController < ApplicationController
  def index

  end

  def new
    @member = Team.find(1)
  end

  def create

  end

  def show

  end

  def destroy

  end

  private

  def home_params

  end
end
