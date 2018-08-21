class Api::V1::WordsController < ApplicationController
  def index
    @words = Word.all
    render json: @words 
  end

  def create
  end
end
