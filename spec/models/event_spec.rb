require 'rails_helper'

RSpec.describe Event, :type => :model do
  it "creates and save new event" do
    event = Event.create!(name: "Reading the best poems by Lord Byron",
                          description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
                          capacity: 15,
                          date: "2015-08-01 12:00",
                          place: "Lviv Franko National University",
                          latitude: 49.84061,
                          longitude: 24.02251)
    event.save
    expect(event.save).to eq(true)
  end

  it "don't create event without name" do
    event = Event.new(name: "",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        capacity: 15,
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event without description" do
    event = Event.new(name: "Reading the best poems by Lord Byron",
        description: "",
        capacity: 15,
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event without capacity" do
    event = Event.new(name: "Reading the best poems by Lord Byron",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event without date" do
    event = Event.new(name: "Reading the best poems by Lord Byron",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        capacity: 15,
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event without place" do
    event = Event.new(name: "Reading the best poems by Lord Byron",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        capacity: 15,
        date: "2015-08-01 12:00",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event with too short name" do
    event = Event.new(name: "Abc",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        capacity: 15,
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event with too long name" do
    event = Event.new(name: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        capacity: 15,
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event with too short description" do
    event = Event.new(name: "Reading the best poems by Lord Byron",
        description: "I had a dream",
        capacity: 15,
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end

  it "don't create event with too long description" do
    event = Event.new(name: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        description: "I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth.
                      I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth.
                      I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth.
                      I had a dream, which was not all a dream. The bright sun was extinguish’d, and the stars Did wander darkling in the eternal space, Rayless, and pathless, and the icy earth",
        capacity: 15,
        date: "2015-08-01 12:00",
        place: "Lviv Franko National University",
        latitude: 49.84061,
        longitude: 24.02251)
    expect(event.valid?).to eq(false)
  end
end
