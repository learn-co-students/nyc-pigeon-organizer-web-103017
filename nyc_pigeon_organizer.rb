def nyc_pigeon_organizer(data)
    organized_pigeons = {}
    data.each do |category, values|
        values.each do |key, array|
            array.each do |name|
                organized_pigeons[name] ||= {}
                organized_pigeons[name][category] ||= []
                organized_pigeons[name][category] << key.to_s
            end
        end
    end
    organized_pigeons
end
