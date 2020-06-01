class Auth::IpBanned < Auth::CoreAuth
  self.table_name = "ip_banned"
end