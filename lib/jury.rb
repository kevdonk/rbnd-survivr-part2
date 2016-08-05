class Jury
  attr_accessor :members

  def initialize
    @members = []
  end
  def add_member(name)
    @members.push(name)
  end
  def cast_votes(finalists)
    voteResults = {}
    finalists.each do |finalist|
      voteResults[finalist] = 0
    end
    @members.each do |member|
      votedFor = finalists.sample
      voteResults[votedFor] += 1
      puts "#{member} votes for #{votedFor}"
    end
    return voteResults
  end
  def report_votes(voteResults)
    voteResults.each do |finalist|
      puts "#{finalist} recieved #{voteResults[finalist]} votes"
    end
  end
  def announce_winner(voteResults)
    finalists = [voteResults.keys[0], voteResults.keys[1]]
    return voteResults[finalists[0]] > voteResults[finalists[1]] ? finalists[0] : finalists[1]
  end
end
