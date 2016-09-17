require 'sinatra'
require 'asples_sinatra'
require 'ostruct'

get '/' do

  @user = OpenStruct.new
  @user.errors = {name: ["An error has occured"]}
  @user.name = "John Doe"

  haml "= input :name, object: @user, label: 'Full name', placeholder: 'Enter your full name'"
end
