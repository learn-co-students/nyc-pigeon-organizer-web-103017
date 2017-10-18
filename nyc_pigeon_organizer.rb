#:color => {
#   :purple => ["Theo", "Peter Jr.", "Lucky"],
#      },
# :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#    },
# :lives => {
#    "Subway" => ["Theo", "Queenie"],

#pigeon_list = {
#  "Theo" => {
#    :color => ["purple", "grey"],
#    :gender => ["male"],
#    :lives => ["Subway"]

def nyc_pigeon_organizer(data)
  new_hash={}
  data.each do |key_1, hash|
    hash.each do |key_2, array|
      array.each do |item|
        if !new_hash.has_key?(item)
          new_hash[item] = {}
        end
        if !new_hash[item].has_key?(key_1)
          new_hash[item][key_1] = []
        end
        if !new_hash[item][key_1].include?(key_2)
           new_hash[item][key_1]<<key_2.to_s
        end
      end
    end
  end
  new_hash
end
