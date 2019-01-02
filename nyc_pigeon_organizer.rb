
def bird_list(data)
  data.collect {|key, value| value.values}.flatten.uniq
end

def properties_of(data, bird)
  return_hash = {}
  data.each do |key, value| 
    return_hash[key] = []
    value.each do |subkey, subkey_value|
      return_hash[key] << subkey.to_s if subkey_value.include?(bird)
    end
  end
  return_hash
end

def nyc_pigeon_organizer(data)
  return_hash = {}
  bird_list(data).each do |bird|
    return_hash[bird] = properties_of(data, bird)
  end
  return_hash
end
