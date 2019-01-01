require 'pry'

def nyc_pigeon_organizer(data)
  
  ## SETS UP FINAL HASH (CURRENTLY EMPTY)
  organized_data = {}
  
  ## CREATES KEYS FOR FINAL HASH
  data.each {|description, value|
  
  value.each {|array, bird|
  bird.each {|name|
  organized_data[name] = {color: [], gender: [], lives: []}
  }
  }
  }
  

  ## FILLS IN COLORS
  
  all_bird_names = organized_data.keys 
  data[:color].each {|color, names|
  names.each {|name|
  all_bird_names.each {|bird_name|
  if name === bird_name
    organized_data[bird_name][:color] << color.to_s
  end
  }
  }
  }
   ## FILLS IN GENDERS
  data[:gender].each {|gender, names|
  names.each {|name|
  all_bird_names.each {|bird_name|
  if name === bird_name
    organized_data[bird_name][:gender] << gender.to_s
  end
  }
  }
  }
  
  data[:lives].each {|city, names|
  names.each {|name|
  all_bird_names.each {|bird_name|
  if name === bird_name
    organized_data[bird_name][:lives] << city.to_s
  end
  }
  }
  }
organized_data
end