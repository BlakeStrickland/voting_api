class CandidateController < ApplicationController
  def index
    # respond_to do |format|
      # format.json {render json:Candidate.all.to_json}
      render json:Candidate.all.to_json

  end

  def show
    id = params[:id]
    render json: Candidate.all.to_json
  end
end
