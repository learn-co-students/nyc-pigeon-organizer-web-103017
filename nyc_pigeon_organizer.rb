def nyc_pigeon_organizer(data)
  # write your code here!
  pidgeon_list = {}

  data.each do |category, hash|
    hash.each do |info, pidgeons|
      pidgeons.each do |pidgeon|
        pidgeon_list[pidgeon] = {:color => [], :gender => [], :lives => []}
      # {:color => [], :gender => [], :lives => []}
      end
    end
  end


  data.each do |category, hash|
    hash.each do |info, pidgeons|
      pidgeon_list.each do |name, info_hash|

          info_hash[category] << info.to_s if pidgeons.include?(name)

      end
    end
  end

  # pidgeons.each do |pidgeon|
  #   if pidgeons.include?(pidgeon_list[pidgeon])
  #     pidgeon_list[pidgeon][category] << info
  #   end
  # end

  pidgeon_list
end
