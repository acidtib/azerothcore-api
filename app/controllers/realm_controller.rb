class RealmController < ApplicationController

  def info
    realms = Auth::Realm.all

    json_response(realms)
  end

end