config = YAML::load(ERB.new(File.read(Rails.root.join("config", "auth_database.yml"))).result)
AUTH_DB = config[Rails.env]