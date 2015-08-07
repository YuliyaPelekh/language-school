FactoryGirl.define do
  factory :picture do
    sequence(:title) { |n| "Picture #{n}" }
    description "Standart picture description"
    association :album, factory: :album
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app', 'assets', 'images', 'people.jpg')) }
  end
  trait :without_album do 
    album_id nil
  end
  trait :oversized_file do 
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app', 'assets', 'images', 'jir.jpg')) }
  end
end
