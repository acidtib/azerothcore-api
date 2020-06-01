class Characters::GuildMember < Characters::CoreCharacters
  self.table_name = "guild_member"
  self.primary_key = "guildid"
end