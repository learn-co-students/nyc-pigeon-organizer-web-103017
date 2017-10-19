def nyc_pigeon_organizer(data)
  resorted_pigeons = {}
  data[:gender].each do |gender, name_array|
    name_array.each do |name|
      resorted_pigeons[name] = {color:[], gender:[], lives:[] }
      resorted_pigeons[name][:gender] << gender.to_s
    end
  end

  resorted_pigeons.each do |name, details_hash|
    data[:color].each do |color, names_array|
      resorted_pigeons[name][:color] << color.to_s if names_array.include?(name)
    end
    data[:lives].each do |place, names_array|
      resorted_pigeons[name][:lives] << place.to_s if names_array.include?(name)
    end
  end
end


# pigeon_data = {
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
#
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
