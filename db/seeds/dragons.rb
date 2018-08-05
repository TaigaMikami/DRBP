dragons = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'dragons.json')))

dragons.each do |dragon|
  dragon_names = Dragon.pluck(:name)
  next if dragon_names.include?(dragon['name'])
  Dragon.create(name: dragon['name'], image_url: dragon['image_url'], min_power: dragon['min_power'], max_power: dragon['max_power'])
end