require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data[:gender].each { |sex, name|
    i = 0
    while i < name.length
      pigeon_list[name[i]] = {}
      i += 1
    end
  }
  data.each { |category, category_data|
    pigeon_list.collect { |pigeon_name, characteristics|
      characteristics[category] = []
    }
  }
  data[:gender].each { |sex, name|
    pigeon_list.collect { |pigeon_name, characteristics|
      i = 0
      while i < name.length
        if pigeon_name == name[i]
          characteristics[:gender].push(sex.to_s)
        end
        i += 1
      end
    }
  }

  data[:lives].each { |location, name|
    pigeon_list.collect { |pigeon_name, characteristics|
      i = 0
      while i < name.length
        if pigeon_name == name[i]
          characteristics[:lives].push(location)
        end
        i += 1
      end
    }
  }

  data[:color].each { |color, name|
    pigeon_list.collect { |pigeon_name, characteristics|
      i = 0
      while i < name.length
        if pigeon_name == name[i]
          characteristics[:color].push(color.to_s)
        end
        i += 1
      end
    }
  }
pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
