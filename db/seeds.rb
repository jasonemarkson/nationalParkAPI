# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = 'https://developer.nps.gov/api/v1/parks?limit=50&api_key=a0pycXYjNhLyJ0vQ3vQI9UfbjXN0Ii7Gf8aUzM74'

# gem 'httparty'
resp = HTTParty.get(url)
# binding.pry
resp["data"].each do |park|
    hash = Park.create(
        {
        fullName: park["fullName"],
        parkCode: park["parkCode"],
        description: park["description"],
        latitude: park["latitude"],
        longitude: park["longitude"],
        url: park["url"],
        states: park["states"],
        park_images: park["images"]
    }
)
end

user = User.create(email: "jasonmarkson@gmail.com", username: "jason", password_digest: "test")

savedPark = SavedPark.create(park_id: 1, user_id: 1)

attraction = Attraction.create(saved_park_id: 1, name: "walking up those stairs")