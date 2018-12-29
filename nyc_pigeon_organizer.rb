require "pry"

def nyc_pigeon_organizer(data)
    list = {}
    data[:lives].each do |place, name_a|
        name_a.each do |name|
            arr = [place]
            list[name] = {}
            list[name][:lives] = arr
        end
        
    end
    data.delete(:lives)
    
    list.map do |pigeon, att_h|
        att_h[:color] = []
        att_h[:gender] = []
    end
        
    
    def transform_keys(hash)
        result = {} 
        hash.each_pair do |key, value|
            result[yield(key)] = value
        end
        result
    end
    
    data.each do |attribute, data_h|
        data_h = transform_keys(data_h) {|k| k.to_s}
        data_h.map do |data_k, names_a|
            names_a.map do |name|
                list[name][attribute] << data_k
            end
        end
    end

    list
    
end