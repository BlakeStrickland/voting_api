class CandidatesController < ApplicationController
  def index
    # respond_to do |format|
    # format.json {render json:Candidate.all.to_json}
    render json:Candidate.all.to_json
  end

  def show
    # access_token = params[:access_token]
    id = params[:id]
    render json: Candidate.all.to_json
  end
end
