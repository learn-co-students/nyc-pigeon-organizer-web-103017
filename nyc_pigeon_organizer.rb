require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new(0)
  data.each do |c_g_l_key, hash|
    hash.each do |key, value_array|
      value_array.each do |name|
        if pigeon_list[name] == 0
          pigeon_list[name] = Hash.new(0)
        end
        if pigeon_list[name][c_g_l_key] == 0
          pigeon_list[name][c_g_l_key] = []
        end
        pigeon_list[name][c_g_l_key] << key.to_s
      end
    end
  end
  pigeon_list
end
