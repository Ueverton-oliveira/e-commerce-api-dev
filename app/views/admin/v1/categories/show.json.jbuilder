json.category do
  json.(@category, :id, :name)
end

def create
  @participant = Participant.create(participant_params)

  if @participant.save!
    render :show
  else
    render json: @participant.errors, status: :unprocessable_entity
  end
end