class Game
  attr_accessor :tribes
  def initialize(tribe_one, tribe_two)
    @tribes = [tribe_one, tribe_two]
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
    new_tribe = []
    @tribes.each do |tribe|
      tribe.members.each do |member|
        new_tribe.push(member)
      end
    end
    Tribe.new({name: name, members: new_tribe})
  end
  def individual_immunity_challenge
    @tribes.sample.members.sample
  end
end
