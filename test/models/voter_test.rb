require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  def test_has_voter
    assert Voter
  end

  def test_voter_has_votes
    bob = Candidate.new(name: "Bob", hometown: "Tusca", district: "9", party: "R")
    vote = Vote.new
    bob.votes << vote
    assert bob.votes.include?(vote)
  end
end
