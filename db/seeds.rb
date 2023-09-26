# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

require 'json'

# Load the JSON data from the file
json_data = File.read(Rails.root.join('db', 'landmarks.json'))
landmarks = JSON.parse(json_data)

# Iterate through the JSON data and create Landmark records
landmarks.each do |landmark_data|
  landmark = Landmark.new(
    name: landmark_data['name'],
    images: landmark_data['image'], # Updated to handle an array of images
    type_of_landmark: landmark_data['type'],
    visiting_price: landmark_data['visiting_price'],
    coordinates: landmark_data['coordinates'],
    description: landmark_data['description'],
    opening_hours: landmark_data['opening_hours'],
    address: landmark_data['address'],
    contact_information: landmark_data['contact_information'],
    accessibility: landmark_data['accessibility'],
    nearby_attractions: landmark_data['nearby_attractions'],
    historical_significance: landmark_data['historical_significance'],
    wildlife: landmark_data['wildlife'],
    facilities: landmark_data['facilities'],
    guided_tours: landmark_data['guided_tours'],
    visitor_reviews_ratings: landmark_data['visitor_reviews_ratings'],
    special_events: landmark_data['special_events'],
    local_culture: landmark_data['local_culture'],
    weather: landmark_data['weather'],
    entry_requirements: landmark_data['entry_requirements'],
    history_timeline: landmark_data['history_timeline'],
    tips_for_visitors: landmark_data['tips_for_visitors'],
    parking_information: landmark_data['parking_information'],
    souvenir_shops: landmark_data['souvenir_shops'],
    photography_rules: landmark_data['photography_rules']
  )

  # Save the record to the database
  landmark.save!
end
