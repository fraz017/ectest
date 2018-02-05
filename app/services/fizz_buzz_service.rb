class FizzBuzzService
  def initialize(value)
    @original = value.to_s
    @integer = value.to_i
  end

  def buzify
    return nil, nil, 422 if (@original.blank? || @original.match(/^(\d)+$/).nil?)

    buzz = ""
    if (@integer % 3 == 0 && @integer % 5 == 0)
      buzz = "FizzBuzz"
    elsif (@integer % 3 == 0)
      buzz = "Fizz"
    elsif (@integer % 5 == 0)
      buzz = "Buzz"
    end  
    return buzz, @original, 200
  end
end