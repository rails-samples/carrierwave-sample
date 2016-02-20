class Project < ActiveRecord::Base
  has_many :images, class_name: 'ProjectImage'
end
