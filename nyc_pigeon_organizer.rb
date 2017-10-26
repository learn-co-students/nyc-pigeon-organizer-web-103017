require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  birds_list = {}
  data.each do |attribute, category|
    category.each do |category, names|
      names.each do |bird|
        if birds_list.include?(bird) == false
          birds_list[bird] = {
            attribute => [category.to_s]
          }
        elsif birds_list[bird][attribute] != nil
          birds_list[bird][attribute] << category.to_s
        else
          birds_list[bird][attribute] = [category.to_s]
        end
      end
    end
  end
  birds_list
end

nyc_pigeon_organizer(pigeon_data)
