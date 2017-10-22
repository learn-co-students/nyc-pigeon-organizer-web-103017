def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, value| #color, gender, lives and {}
    value.each do |value_item, names| #purple,grey,etc and []
      names.each do |name| #[]
        if !pigeon_list.include?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].include?(attributes)
          pigeon_list[name][attributes] = []
        end
        if !pigeon_list[name][attributes].include?(value_item)
          pigeon_list[name][attributes] << value_item.to_s
        end
      end
    end
  end
  pigeon_list
end


#
# data = pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
#
# puts nyc_pigeon_organizer(data)
