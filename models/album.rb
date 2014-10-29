class Album < Ohm::Model
  attribute :title
  attribute :img_url
  
  reference :artist, :Artist
end
