class Voter < ActiveRecord::Base
  has_one :vote
  validates :name, :party, presence: true
  before_create :generate_access_token

  # def initialize(:name, :party, :access_token = generate_access_token)
  #   @name = name
  #   @party = party
  #   @access_token = access_token
  # end
private
  def set_token
    return if access_token.present?
    self.access_token = generate_access_token
  end

  def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end

end
