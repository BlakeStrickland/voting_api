require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
 def test_has_candidate
   assert Candidate
 end

 def test_candidate_has_votes
   danny = Candidate.new
   vote = Vote.new
   danny.votes << vote
   assert danny.votes.include?(vote)
 end

end
