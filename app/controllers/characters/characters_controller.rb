class Characters::CharactersController < ApplicationController

  def all
    characters = Characters::Characters.all

    render json: characters
  end

  def get
    character = Characters::Characters.find_by_guid(params["guid"])

    render json: character
  end
end