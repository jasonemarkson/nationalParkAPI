# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# park = Park.create( 
#     { fullName: "Acadia National Park", parkCode: "acad", description: "Acadia National Park protects the natural beauty of the highest rocky headlands along the Atlantic coastline of the United States, an abundance of habitats, and a rich cultural heritage. At 3.5 million visits a year, it's one of the top 10 most-visited national parks in the United States. Visitors enjoy 27 miles of historic motor roads, 158 miles of hiking trails, and 45 miles of carriage roads.", latitude: "44.409286", longitude: "-68.247501", url: "https://www.nps.gov/acad/index.htm" }
# )
    
# image = Image.create(
#     {
#     credit: "NPS / Kristi Rugg",
#     title: "Acadia's rocky coastline",
#     altText: "Large puffy clouds dot a brilliant blue sky as wave crash against the rocky coastline of Acadia.",
#     caption: "Millions of people come to Acadia for our distinctive rocky coastline.",
#     url: "https://www.nps.gov/common/uploads/structured_data/3C7B45AE-1DD8-B71B-0B7EE131C7DFC2F5.jpg",
#     park_id: 1
#     }
# )

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
        park_images: park["images"]
    }
)
end
