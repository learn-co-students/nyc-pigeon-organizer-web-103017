require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash = {}
  data.each do |attribute, attribute_hash| # attribute = {:color, :gender, :lives}
    #binding.pry
    attribute_hash.each do |data_point, names| # data_point = :purple, names = [<pigeon names>]
      #binding.pry
      names.each do |pigeon|
        if pigeon_hash[pigeon].nil? # Pigeon exist in pigeon hash?
          pigeon_hash[pigeon] = {}
        end
        if pigeon_hash[pigeon][attribute].nil?
          pigeon_hash[pigeon][attribute] = []
        end
        pigeon_hash[pigeon][attribute] << data_point.to_s
        #binding.pry
      end
    end
  end
  return pigeon_hash
end
