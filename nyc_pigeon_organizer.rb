
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

def nyc_pigeon_organizer(data)
  new_hash = {}


  data.each do |outercat, innercat|
    if outercat == :gender #sort genders
      innercat.each do |gender, names|
        #puts "#{gender} : #{names}"
        if gender == :male
          names.each do |item|
            new_hash[item] = {gender: ["male"]}
          end
        elsif gender == :female
          names.each do |item|
            new_hash[item] = {gender: ["female"]}
          end
        end
      end
    end
  end


  data.each do |outercat, innercat|
    if outercat == :color #make color arrays
      innercat.each do |colors, names|
        if colors == :purple
            names.each do |item|
              puts item
              new_hash[item][:color] = []
            end
        elsif colors == :grey
            names.each do |item|
          #  puts "grey = #{item}"
                new_hash[item][:color] = []
            end
        elsif colors == :white
            names.each do |item|
            #  puts "white = #{item}"
                new_hash[item][:color] = []
            end
        elsif colors == :brown
            names.each do |item|
            #  puts "brown = #{item}"
                new_hash[item][:color] = []
            end
        end
      end
    elsif outercat == :lives
      innercat.each do |places, names|
        if places == "Subway"
          names.each do |item|
            new_hash[item][:lives] = []
          end
        elsif places == "Central Park"
          names.each do |item|
            new_hash[item][:lives] = []
          end
        elsif places == "Library"
          names.each do |item|
            new_hash[item][:lives] = []
          end
        else places == "City Hall"
          names.each do |item|
            new_hash[item][:lives] = []
          end
        end
      end
    end
  end

    data[:color].each do |key, value| #add to color array
      puts key
      if key == :purple
        value.each do |item|
          new_hash[item][:color].push("purple")
        end
      elsif key == :grey
        value.each do |item|
          new_hash[item][:color].push("grey")
        end
      elsif key == :white
        value.each do |item|
          new_hash[item][:color].push("white")
        end
      elsif key == :brown
        value.each do |item|
          new_hash[item][:color].push("brown")
        end
      end
    end

    data[:lives].each do |key, value| #add to color array
      puts key
      if key == "Subway"
        value.each do |item|
          new_hash[item][:lives].push("Subway")
        end
      elsif key == "Central Park"
        value.each do |item|
          new_hash[item][:lives].push("Central Park")
        end
      elsif key == "Library"
        value.each do |item|
          new_hash[item][:lives].push("Library")
        end
      elsif key == "City Hall"
        value.each do |item|
          new_hash[item][:lives].push("City Hall")
        end
      end
    end

  return new_hash
end


pdata = {
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


nyc_pigeon_organizer(pdata)
