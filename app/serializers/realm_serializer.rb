class RealmSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :timezone, :population, :gamebuild
end
