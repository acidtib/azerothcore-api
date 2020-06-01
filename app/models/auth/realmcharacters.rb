class Auth::Realmcharacters < Auth::CoreAuth
  self.table_name = "realmcharacters"
  self.primary_key = "realmid"
end