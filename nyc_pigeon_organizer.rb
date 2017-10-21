
def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  pigeon = {}
  value = []

  pigeon_data.each do |key,val|
    val.each do |nkey,nval|
        value.push(nval)
    end
  end

  value.flatten.uniq.each do |key|
    pigeon[key] = {:color => [], :gender => [], :lives => []}
  end

  pigeon_data.each do |key,val|
    val.each do |nkey, nval|
      nval.each do |bird|
          pigeon[bird][key].push(nkey.to_s)
      end
    end
  end

  return pigeon
end
