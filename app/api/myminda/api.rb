require_relative 'projects.rb'
require_relative 'entities.rb'
module Myminda
  class Api < Grape::API
    version 'v1', using: :path
    format :json
    content_type :txt, 'text/plain'
    mount Myminda::Projects
  end
end
