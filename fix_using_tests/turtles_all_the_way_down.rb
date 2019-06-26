
def turtles
    [
      {name: "Donatello", weapon: "bo-staff", traits: ["serious", "leader"]},
      {name: "Michaelangelo", weapon: "nunchuks", traits: "party dude"}, # add array brackets to "party dude"
      {name: "Raphael", weapon: "sais", traits: ["cool", "rude"]},
      {name: "Leonardo", weapon: "katanas", traits: ["loves being a turtle"]}
    ]
end

def turtle_traits(turtles)

array = []

  turtles.map {|x|
    x.map {|key,value|
      if key == :traits && value.class == Array 
        array << value
      elsif key == :traits && value.class != Array
        array << value.split(",")
      end
    }
  }
array
end

# not sure where to put the unless - nil? check.
# solution above wouldn't iterate through strings
# that don't have spaces? check on this

# def turtle_traits(turtles)
#   a = []
#   turtles.map do |turtle|
#      turtle.map {|key,value|
#       if (key == :traits) && (value.class == Array)
#         a.append(value) unless value.nil?
#       elsif (key == :traits) && (value.class != Array)
#         binding.pry
#       end
#     }
#   end
#   a.compact
# end
