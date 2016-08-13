class Tribe
  attr_accessor :name, :members

  def initialize(options)
    @name = options[:name]
    @members = options[:members]

    puts "#{@name}".red
    @members.each do |member|
      print "#{member} "
    end
    puts ""
  end

  def to_s
    @name
  end

  def tribal_council(options)
    outcast = members.reject {|member| member == options[:immune]}.sample
    @members.delete(outcast)
    outcast
  end
end
