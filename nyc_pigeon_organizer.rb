def nyc_pigeon_organizer(data)
  result = Hash.new
  data.each do |category, hash|
    hash.each do |quality, name_arr|
      name_arr.each do |name|
        result[name] = {}
      end
    end
  end
  result.each do |pidgeon, hash|
    data.each do |category, hash|
      hash.each do |quality, name_arr|
        if name_arr.include?(pidgeon)
          result[pidgeon][category] = []
        end
      end
    end
  end
  result.each do |pidgeon, empty_hash|
    empty_hash.each do |result_category, arr|
      data.each do |category, hash|
        hash.each do |quality, name_arr|
          if result_category == category && name_arr.include?(pidgeon)
          arr << quality.to_s
        end
      end
    end
  end
  result
end 
end