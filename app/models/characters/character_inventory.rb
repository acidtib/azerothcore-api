class Characters::CharacterInventory < Characters::CoreCharacters
  self.table_name = "character_inventory"
  self.primary_key = "guid"
end