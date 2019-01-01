require 'pry'

def nyc_pigeon_organizer(data)
  organized_data = {}
  
  data.each {|description, value|
  value.each {|array, bird|
  bird.each {|name|
  organized_data[name] = {color: [], gender: [], lives: []}
  }
  }
  }
  data[:color].each {|color, names|
  names.each {|name|
  organized_data.keys.each {|bird_name|
  if name === bird_name
    organized_data[bird_name][:color] = color.to_s
  end
  }
  }
  }
  binding.pry
end