require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
  @reversed_name = params[:name]
  @reversed_name = @reversed_name.reverse
  @reversed_name
end

  get "/square/:number" do
    @snum = params[:number]
    x = @snum.to_i * @snum.to_i
    x.to_s
end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase].split('%20').join(" ")
    @num = params[:number].to_i
    "#{@phrase}\n" * @num
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."}"
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
      if @operation == "add"
        x = @num1 + @num2
        x.to_s
      elsif @operation == "subtract"
        x = @num1 - @num2
        x.to_s
      elsif @operation == "multiply"
        x =  @num1 * @num2
        x.to_s
      elsif @operation == "divide"
        x = @num1 / @num2
        x.to_s
      end
  end



end
