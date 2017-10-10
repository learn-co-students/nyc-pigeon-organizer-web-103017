def nyc_pigeon_organizer(data)
  # write your code here!
  output_hash = {}
  pigeons = data[:gender].values.flatten!
  pigeons.each{|pigeon| output_hash[pigeon]={}}
  data.keys.each{|key| output_hash.each{|pigeon,value| value[key] = []}}

  data.each do |key,value|
    value.each do |key1,value1|
      value1.each{|pigeon| output_hash[pigeon][key] << key1.to_s}
    end
  end

  output_hash

end
