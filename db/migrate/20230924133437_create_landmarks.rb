class CreateLandmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.json :images
      t.string :type_of_landmark
      t.string :visiting_price
      t.json :coordinates
      t.text :description
      t.string :opening_hours
      t.string :address
      t.json :contact_information
      t.text :accessibility
      t.json :nearby_attractions
      t.text :historical_significance
      t.text :wildlife
      t.json :facilities
      t.boolean :guided_tours
      t.json :visitor_reviews_ratings
      t.json :special_events
      t.text :local_culture
      t.text :weather
      t.text :entry_requirements
      t.json :history_timeline
      t.json :tips_for_visitors
      t.json :parking_information
      t.boolean :souvenir_shops
      t.text :photography_rules

      t.timestamps
    end
    add_index :landmarks, :name
  end
end
