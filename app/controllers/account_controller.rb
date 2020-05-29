class AccountController < ApplicationController

  def login
    username = params["account"]["username"].upcase
    password = params["account"]["password"].upcase
    status = 200

    account = Auth::Account.find_by_username(username)

    if account
      hashed_password = Digest::SHA1.hexdigest("#{username}:#{password}").upcase

      if account.sha_pass_hash == hashed_password

      else
        status = 401
        result = "wrong password"
      end
    else
      status = 404
      result = "no account found with that username"
    end
    
    if status == 200
      json_response(account)
    else
      json_response({alert: result}, status)
    end
  end

  def register
    username = params["account"]["username"].upcase
    email = params["account"]["email"]
    password = params["account"]["password"].upcase

    check_username = Auth::Account.find_by_username(username)
    
    check_email = Auth::Account.find_by_reg_mail(email)

    if check_username or check_email
      if check_username
        json_response({alert: "username is taken"}, 403)
      end

      if check_email
        json_response({alert: "email is taken"}, 403)
      end
    else
      hashed_password = Digest::SHA1.hexdigest("#{username}:#{password}").upcase

      new_account = Auth::Account.create(
        username: username,
        sha_pass_hash: hashed_password,
        reg_mail: email
      )

      if new_account
        json_response({notice: "succesfully register"})
      else
        json_response({notice: "try again"}, 500)
      end
    end
  end

end
