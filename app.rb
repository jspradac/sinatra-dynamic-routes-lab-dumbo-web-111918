require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

  get '/square/:number' do
    a = params[:number].to_i
    (a*a).to_s
  end

  get '/say/:number/:phrase' do
    erb :number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
  end

  get '/:operation/:number1/:number2' do
    a = params[:number1].to_i
    b = params[:number2].to_i
    if params[:operation] == "multiply"
      a * b
    elsif params[:operation] == "subtract"
      a - b
    elsif params[:operation] == "add"
      a + b
    elsif params[:operation] == "divide"
      a.to_f/b
    else
    end.to_s
  end
end
