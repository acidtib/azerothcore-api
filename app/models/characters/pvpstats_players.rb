class Characters::PvpStatsPlayers < Characters::CoreCharacters
  self.table_name = "pvpstats_players"
  self.primary_key = "battleground_id"
end