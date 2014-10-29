require "cuba"
require "cuba/render"
require "ohm"

require_relative "models/album"
require_relative "models/artist"
 
Cuba.plugin(Cuba::Render)
Cuba.use Rack::Session::Cookie, secret: "foobar"

Ohm.redis = Redic.new("redis://127.0.0.1:6379")

Cuba.define do
  @page = {}
  on root do
    res.write (view("home", albums: Album.all))
  end
end