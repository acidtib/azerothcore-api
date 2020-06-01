class RealmController < ApplicationController

  def info
    realms = Auth::Realm.all

    render json: realms
  end

  def uptime
    uptimes = Auth::Uptime.all

    render json: uptimes
  end

  def characters
    characters = Auth::Realmcharacters.all

    render json: characters
  end

end