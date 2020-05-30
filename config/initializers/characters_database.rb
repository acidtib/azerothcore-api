chars = YAML::load(ERB.new(File.read(Rails.root.join("config", "characters_database.yml"))).result)
CHARACTERS_DB = chars[Rails.env]