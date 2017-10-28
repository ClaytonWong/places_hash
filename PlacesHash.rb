places = 
{
  columbia: "no",
  hong_kong: "yes",
  japan: "no",
  new_zealand: "yes",
  south_africa: "no",
  syria: "no",
  united_states_of_america: "no"
}

def puts_place (place)
  words = place.split("_")      # Go through placename and split it into separate words marked by underscores
  words.each do |word|
    print word.capitalize + " "   # Capitalise and print every word and print spaces instead of underscores
  end
  puts ""
end

def print_places (places, yes_no)
  my_array = []
  places.each do |place, rec|
    if rec == yes_no                # If rec matches value of yes_no,
      words = place.to_s.split("_")   # go through placename and split it into separate words marked by underscores
      words.each do |word|
        word.capitalize!                # Capitalise parts of placename
      end
      my_array << words               # Put placename on to end of my_array
    end
  end

  my_array_index = 0
  while my_array_index < my_array.length                      # While not at end of my_array
    name_index = 0                                              # Goto first word of placename
    while name_index < my_array[my_array_index].length          # While not at end of placename
      print my_array[my_array_index][name_index]                  # Print current part of placename
      name_index += 1                                             # Goto next part of placename
      print " " if name_index < my_array[my_array_index].length   # Separate parts of placename with spaces if not at
    end                                                         # end of placename
    my_array_index += 1                                         # Goto next placename
    print ", " if my_array_index < my_array.length              # Separate placenames using commas and spaces if not at
  end                                                         # end of my_array
  print "."                                                   # Put fullstop after last placename.
end

puts "No go zones (list format): "
places.each do |place, rec|
  puts_place(place.to_s) if rec == "no"
end
puts ""

puts "Recommended places to visit(list format): "
places.each do |place, rec|
  puts_place(place.to_s) if rec == "yes"
end
puts ""

puts "No go zones ('Sentence format'): "
print_places(places, "no")
puts ""
puts ""
puts "Recommended places to visit('Sentence format'): "
print_places(places, "yes")
puts ""
