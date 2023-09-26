require 'json'

# Load the JSON data from the file
json_data = File.read(Rails.root.join('db', 'landmarks.json'))
landmarks = JSON.parse(json_data)

# Create users
User.create(username: 'user1')
User.create(username: 'user2')

# Iterate through the JSON data and create Landmark records
landmarks.each do |landmark_data|
  # Check if a landmark with the same name already exists
  existing_landmark = Landmark.find_by(name: landmark_data['name'])

  # Create a new landmark only if it doesn't already exist
  next unless existing_landmark.nil?

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

# Create reviews for the landmark
UserReview.create(user_id: 3, landmark_id: 1, rating: 4, comment: 'Great place!')
UserReview.create(user_id: 4, landmark_id: 2, rating: 5, comment: 'Amazing landmark!')
