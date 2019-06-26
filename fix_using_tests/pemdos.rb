def snake_it_up(string)
  if string[0] == "s"
    ("s".split * 10).join + string
  else
    string
  end
end
