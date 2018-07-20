require './config/environment'
require './app/models/sample_model'
require './app/models/quiz_code'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/quiz' do
    return erb :quiz_page
  end
  
  get '/mentalhealth' do
    return erb :mental_health
  end
  
   get '/disabilities' do
    return erb :disabilities
  end
  
  post '/quiz' do 
    # @params = params[:Q1, :Q2, :Q3, :Q4, :Q5, :Q6, :Q7, :Q8, :Q9, :Q10]
    @quiz = Quiz_questions.new(params)
    @quiz.play
    @answer = @quiz.final_results
    return erb :quiz_results 
  end
    
end