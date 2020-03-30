require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')
