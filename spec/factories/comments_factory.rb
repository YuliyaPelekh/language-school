FactoryGirl.define do
  factory :comment do |f|
    body 'Some awesome text'
    after(:build) {|comment| comment.user_id = create(:user).id}
  end
end
