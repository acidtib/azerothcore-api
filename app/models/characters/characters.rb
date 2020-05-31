class Characters::Characters < Characters::CoreCharacters
  self.table_name = "characters"
  self.primary_key = "guid"

  # work around for reserved word
  class << self
    def instance_method_already_implemented?(method_name)
      return true if method_name == 'class'
      super
    end
  end
end