def generate_star_date
  (rand(100000) + 400000) / 10.0
end


def state_log(star_date)
  "Captain's Log, star date #{star_date}."
end

def crew
  ["Geordi", "Data", "Worf", "William", "Beverly", "Deanna"]
end

def greet_crew(crew)
  hi_crew = []
  crew.each do |crew_member| 
    hi_crew << "Hello #{crew_member}."
  end
  hi_crew
end

def engage
  date = generate_star_date
  sl = state_log(date)
  gc = greet_crew(crew)
  sl
  gc
  greet_crew(crew)

end
