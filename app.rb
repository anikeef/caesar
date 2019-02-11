require "./caesar.rb"
require "sinatra"
require "sinatra/reloader" if development?

get "/*" do
  @shift = params["shift"]
  @text = params["text"]
  erb :index
end
