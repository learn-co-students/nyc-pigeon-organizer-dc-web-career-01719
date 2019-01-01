require "pry"

def nyc_pigeon_organizer(data)
  # write your code here
  
  pidgeon_hash = {}
  data.each do |attribute, att_value|
    att_value.each do |symbol, pidgeon_name|
      pidgeon_name.each do |i|
        if not pidgeon_hash[i]
          pidgeon_hash[i] = {:color => [], :gender => [], :lives => []}
          pidgeon_hash[i][attribute] = [symbol.to_s]
        else
          pidgeon_hash[i].each do |key, value_array|
            if key == attribute
              value_array << symbol.to_s
            end
          end
        end
      end
    end
  end
  pidgeon_hash
end