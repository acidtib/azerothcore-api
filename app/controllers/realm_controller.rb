class RealmController < ApplicationController

  def info
    realms = Auth::Realm.all

    render json: realms
  end

end