require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
 def test_has_candidate
  d = Candidate.new(name: "Danny", hometown: "Tusca", district: "9", party: "D")
  assert d.save
 end

 def test_candidate_has_votes
   danny = Candidate.new(name: "Danny", hometown: "Tusca", district: "9", party: "D")
   vote = Vote.new
   danny.votes << vote
   assert danny.votes.include?(vote)
 end

end
