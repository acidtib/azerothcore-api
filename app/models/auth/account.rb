class Auth::Account < Auth::CoreAuth
  self.table_name = "account"

  has_many :characters
end