require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
  @name = params[:name]
  "#{@name.reverse!}"
  end

  get "/square/:number" do
    @square = params[:number]
    sum = @square.to_i * @square.to_i
    "#{sum}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    var = @number.to_i
    "#{@phrase}" * var
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end


  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
    "#{@number1.to_i + @number2.to_i}"
  elsif @operation == "subtract"
    "#{@number1.to_i - @number2.to_i}"
  elsif @operation == "multiply"
    "#{@number1.to_i * @number2.to_i}"
  else @operation == "divide"
    "#{@number1.to_i / @number2.to_i}"
  end
end
end 





  # @op = params[:operation]
  #   @num1 = params[:number1].to_i
  #   @num2 = params[:number2].to_i
  #   if @op == "add"
  #     "#{@num1 + @num2}"
  #   elsif @op == "subtract"
  #     "#{@num1 - @num2}"
  #   elsif @op == "multiply"
  #     "#{@num1 * @num2}"
  #   elsif @op == "divide"
  #     "#{@num1 / @num2}"
  #   end
  # end
