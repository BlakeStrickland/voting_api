class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  validates :voter, uniqueness: true



end
