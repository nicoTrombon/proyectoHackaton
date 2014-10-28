class Artist < Ohm::Model
  attribute :name
  attribute :genre
  attribute :img_url
  collection :albums, :Album
end