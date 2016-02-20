class ProjectImage < ActiveRecord::Base
  mount_uploader :file, ProjectImageUploader
end
