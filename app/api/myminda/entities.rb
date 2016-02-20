module Myminda
  module Entities
    class Project  < Grape::Entity
      expose :id
      expose :name
    end
  end
end
