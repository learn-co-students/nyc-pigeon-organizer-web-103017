require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |trait, options|#:color
    options.each do |option, names|#:purple
      names.each do |name|#"Theo"
        pigeon_list[name] = {} unless pigeon_list[name]
        pigeon_list[name][trait] = [] unless pigeon_list[name][trait]
        pigeon_list[name][trait] << option.to_s
        # binding.pry
      end
    end
  end
  pigeon_list
end
