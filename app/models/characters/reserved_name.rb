class Characters::Reservedname < Characters::CoreCharacters
  self.table_name = "reserved_name"
  self.primary_key = "name"
end