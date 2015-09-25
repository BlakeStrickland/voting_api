class VotersController < ApplicationController
  #before_action :authenticate

  def create
    v = Voter.new(name: params[:name], party: params[:party])
    if v.save
      render json: v
    else
      render json: v.errors
    end
  end

  def index
    voter = Voter.find(params[:id])

    if voter.access_token == params[:access_token]
      render json: voter
    else
      render json: "YOU SHALL NOT PASS"
    end
  end


  def show
    voter = Voter.find(params[:id])
    if voter.access_token == params[:access_token]
      render json: voter.all
    else
      render json: "YOU SHALL NOT PASS"
    end
  end

  def update
    #before_update :generate_access_token

    # v = Voter.find_by(access_token: params[:access_token])
    # v.update(name: params[:name],party: params[:party])
    # render json: v.to_json

    voter = Voter.find(params[:id])
    if voter.access_token == params[:access_token]
      # voter.name = name: params[:name] if params[:name]
      # voter.party = params[:party] if params[:party]
      if voter.save
        render json: voter
      else
        render json: voter.errors
      end
    else
      render json: "You shall not pass"
    end
  end

  # end
  #
  # def authenticate
  #   authenticate_or_request_with_http_token do |token, options|
  #     Voter.find_by(access_token: access_token)
  #   end
  # end
end
