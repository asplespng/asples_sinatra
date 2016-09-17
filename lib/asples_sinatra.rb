require "asples_sinatra/version"
require "asples_sinatra/sinatra"
require 'active_support'
require 'active_support/core_ext'



module AsplesSinatra
  Sinatra::Application.set :views, Proc.new { File.join(root, "lib/asples_sinatra/templates/") }
  # Your code goes here...
end
