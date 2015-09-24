class VotersController < ApplicationController
  # before_action :authenticate

  def create
    v = Voter.new(name: params[:name], party: params[:party])
    if v.save
      render json: v.to_json
    else
      render json: v.errors
    end
  end

  def show
    id = params[:id]
    render json: Voter.find(id).to_json

    # v = Voter.find_by(access_token: params[:access_token])
    # render json: v.to_json
  end

  def update
    #before_update :generate_access_token

    v = Voter.find_by(access_token: params[:access_token])
    v.update(name: params[:name],party: params[:party])
    render json: v.to_json
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      Voter.find_by(access_token: access_token)
    end
  end
end
