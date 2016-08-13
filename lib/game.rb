class Game
  attr_accessor :tribes
  def initialize(*tribes)
    @tribes = ([] << tribes).flatten!
  end
  def add_tribe(tribe)
    @tribes.push(tribe)
  end
  def immunity_challenge
    @tribes.sample
  end
  def clear_tribes
    @tribes = []
  end
  def merge(name)
    new_tribe_members = @tribes.map(&:members).flatten
    new_tribe = Tribe.new({name: name, members: new_tribe_members})
    @tribes = [new_tribe]
    return new_tribe
  end
  def individual_immunity_challenge
    @tribes.sample.members.sample
  end
end
