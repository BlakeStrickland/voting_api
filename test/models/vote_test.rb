require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def test_has_vote
     assert Vote
   end

   def test_has_votes
     danny = Candidate.new
     vote = Vote.new

     danny.votes << vote

     assert danny.votes.include?(vote)
   end
end
