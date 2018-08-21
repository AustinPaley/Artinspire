class Api::V1::ArttypesController < ApplicationController
  def index
    @types = Arttype.all
    render json: @types
  end

  def create
  end
end
