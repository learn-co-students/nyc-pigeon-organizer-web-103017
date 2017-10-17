def nyc_pigeon_organizer(data)
  new_data = Hash.new
  data.each do |category, list|
    if category == :gender
      list.each do |m_or_f, name_arr|
        name_arr.each do |values|
          new_data[values] = {color: [], gender: [], lives: []}
        end
      end
    end
  end
  data.each do |category, list|
    if category == :color
      list.each do |name, arr|
        new_data.each do |x, attribute|
          if arr.include?(x)
            new_data[x][:color] << name.to_s
          end
        end
      end
    end
    if category == :gender
      list.each do |name, arr|
        new_data.each do |x, attribute|
          if arr.include?(x)
            new_data[x][:gender] << name.to_s
          end
        end
      end
    end
    if category == :lives
      list.each do |name, arr|
        new_data.each do |x, attribute|
          if arr.include?(x)
            new_data[x][:lives] << name.to_s
          end
        end
      end
    end
  end
  new_data
end
