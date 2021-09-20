module Admin::V1
  class SystemRequirementsController < ApiController
    def index
      @system_requirements = SystemRequirement.all
    end

    def create
      @system_requirement = SystemRequirement.new
      @system_requirement.attributes = system_requirement_params
      save_system_requirement!
    end

    private

    def system_requirement_params
      return {} unless params.has_key?(:system_requirement)
      params.require(:system_requirement).permit(:name)
    end

    def save_system_requirement!
      @system_requirement.save!
      render :show
    rescue
      render_error(fields: @system_requirement.errors.messages)
    end
  end
end

