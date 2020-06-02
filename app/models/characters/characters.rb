class Characters::Characters < Characters::CoreCharacters
  bad_attribute_names :class

  self.table_name = "characters"
  self.primary_key = "guid"

end