class SealsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @seals = Seal.all
  end

  def show
    @seal = Seal.find(params[:id])
  end
end
