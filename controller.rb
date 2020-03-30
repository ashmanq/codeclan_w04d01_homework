require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get '/play/:p1/:p2' do
  p1_choice = params['p1']
  p2_choice = params['p2']
  @result = RockPaperScissors.check_winner(p1_choice, p2_choice)
  erb(:result)
end

get '/about' do
  erb(:about)
end

get '/' do
  erb(:home)
end
