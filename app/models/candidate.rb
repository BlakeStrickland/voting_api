class Candidate < ActiveRecord::Base
  has_many :votes
  validates :name, :hometown, :district, :party, presence: true
end
