class Characters::CoreCharacters < ActiveRecord::Base
  self.abstract_class = true

  establish_connection CHARACTERS_DB
end