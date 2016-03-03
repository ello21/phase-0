
# Virus Predictor

# I worked on this challenge with Leo Kukhar
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
# Require relative is a clause which tells the file that it is in
# that it needs a file outside the current one for this program to evaluate.
# "Relative" means that the path to the needed file will be written as relative
# from the current file.

require_relative 'state_data'

# class VirusPredictor
# # Responsible for creating a new instance of the class and setting the value for the instance variables.
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

# # Calls on the predicted_deaths method and the speed_of_spread method
#   def virus_effects
#     predicted_deaths
#     speed_of_spread
#   end

#   private
#   # Uses population_density, population, and state parameters to make calculation of number of deaths,
#   # rounded down to nearest Integer. Prints the expected number of deaths for the current state
#   def predicted_deaths
#   # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   # Uses population_density and state to calculate speed. A higher density indicates a quicker spread.
#   # Prints the speed of spread in months.
#   def speed_of_spread #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

#REFACTOR
class VirusPredictor
# Resposible for creating a new instance of the class and setting the value for the instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Calls on  the predicted_deaths method and the speed_of_spread method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Uses population_density, population, and state parameters to make calculation of number of deaths, rounded down to nearest Integer. Prints the expected number of deaths for the current state
  def predicted_deaths
  # predicted deaths is solely based on population density
    case @population_density
    when  (150..199)
      number_of_deaths = (@population * 0.3).floor
    when  (100..149)
      number_of_deaths = (@population * 0.2).floor
    when  (50..99)
      number_of_deaths = (@population * 0.1).floor
    when (0..49)
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Uses population_density and state to calculate speed. A higher density indicates a quicker spread. Prints the speed of spread in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
  case @population_density
    when (150..199)
      speed += 1
    when (100..149)
      speed += 1.5
    when (50..99)
      speed += 2
    when (0..49)
      speed += 2.5
    else
      speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# For each state in the STATE_DATA Hash, create an instance of VirusPredictor class
# and call #virus_effects.
STATE_DATA.each {|key, value|
   state = VirusPredictor.new(key, value[:population_density], value[:population] )
   state.virus_effects
}

#=======================================================================
=begin
Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?
- The {key: value} is shorthand that can be used when the key is a Symbol. The {"key" => value}
syntax is used when the key is a String.

What does require_relative do? How is it different from require?
- "require" accepts a path to a file that has data which needs to be accessed from the current file.
Normally, you would need to put the full path to the file, starting from the appropriate drive.
By using "require_relative" you only need to put the path of the file RELATIVE to the current file.
So, if the 2 files are in the same folder, you'd only need to put the file's name.

What are some ways to iterate through a hash?
- Using #Hash.each will give you access to both the keys and values of the Hash. You could
also use #map or #collect.

When refactoring virus_effects, what stood out to you about the variables, if anything?
- The variables didn't need to be passed in as parameters to the method since they were
instance variables, the methods already had access to them.

What concept did you most solidify in this challenge?
- When using Hash#each {|key,value|} if value is a sub-Hash you can reference those keys
with value[key_of_sub_Hash]. I initially thought I'd have to say key[value][key_of_sub_Hash]
or something like that. I understand now that since value holds the entire sub-Hash, I can acces
keys in it directly.
=end