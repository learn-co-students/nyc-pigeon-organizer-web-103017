require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |first_a, inner_a|
    inner_a.each do |inn, name_array|
      name_array.each do |name|
        pigeon_list[name] = {}
      end
    end
  end

  pigeon_list.each do |name, hsh|
    data.each do |first_a, inner_a|
      hsh[first_a] = []
      inner_a.each do |inn_att, name_array|
        if name_array.include?(name)
          hsh[first_a].push(inn_att.to_s)
        end
      end
    end
  end





pigeon_list
#binding.pry

end
