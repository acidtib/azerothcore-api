class Auth::Uptime < Auth::CoreAuth
  self.table_name = "uptime"
  self.primary_key = "realmid"
end