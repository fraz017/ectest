class HomeController < ApplicationController
  def index
  end

  def buzify
    if (params[:number].present? && (params[:number].to_i.is_a? Integer))
      buzz = ""
      if (params[:number].to_i % 3 == 0 && params[:number].to_i % 5 == 0)
        buzz = "FizzBuzz"
      elsif (params[:number].to_i % 3 == 0)
        buzz = "Fizz"
      elsif (params[:number].to_i % 5 == 0)
        buzz = "Buzz"
      end  
      render json: {buzz: buzz, number: params[:number]}, status: 200
    else
      render json: {}, status: 422
    end
  end
end
