require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  all_names = []

  data.each do |attributetype, hash|
    hash.each do |attributedata, names|
      names.each do |x|
        all_names << x
      end
    end
  end
  all_names = all_names.uniq
  all_names.each do |x|
    pigeon_list[x] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end

  data.each do |attributetype, hash|
    hash.each do |attributedata, names|
      names.each do |x|
        pigeon_list[x][attributetype] << attributedata.to_s
      end
    end
  end
  return pigeon_list
end
