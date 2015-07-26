require 'rails_helper'

RSpec.describe Event, :type => :model do
  it "creates new event" do
    event1 = Event.create!(name: "Reading the best poems by Lord Byron",
                          description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
                          capacity: 15,
                          date: 2015-08-01 12:00,
                          place: "Lviv Franko National University",
                          latitude: 49.84061,
                          longitude: 24.02251)

    expect(Event.name).to eq("Reading the best poems by Lord Byron")
  end
end
