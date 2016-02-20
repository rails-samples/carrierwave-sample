module Myminda
  class Projects < Grape::API
    resources :projects do
      before do
        def user_params
          ActionController::Parameters.new(params)
        end
      end

      post  do
        project_params = user_params.require(:project).permit(:name, :user_id)
        project = Project.new(project_params)
        project.save
        present( project, with: Entities::Project)
      end

      post ':id/project_images' do
        project = Project.find(params[:id])
        image = project.images.build
        image.file = user_params[:project][:project_image][:image]
        project.save
      end
    end
  end
end
