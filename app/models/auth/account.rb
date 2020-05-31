class Auth::Account < Auth::CoreAuth
  self.table_name = "account"

  validates :username, presence: true, uniqueness: true
  validates :reg_mail, presence: true, uniqueness: true
  validates :reg_mail, format: { with: URI::MailTo::EMAIL_REGEXP }
end