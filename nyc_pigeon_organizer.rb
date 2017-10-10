def nyc_pigeon_organizer(data)
  clean = {}
  data.each do |attr_key, hash|
    hash.each do |desc_key, name_array|
      name_array.each do |name|
        if clean[name] == nil
          clean[name] = {}
        end
        if clean[name][attr_key] == nil
          clean[name][attr_key] = []
        end
        clean[name][attr_key] << desc_key.to_s
      end
    end
  end
  clean
end
