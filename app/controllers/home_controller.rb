class HomeController < ApplicationController
  def index
  end

  def buzify
    buzz, number, status = FizzBuzzService.new({number: params[:number]}).buzify
    render json: {buzz: buzz, number: number}, status: status
  end
end
