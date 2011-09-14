FactoryGirl.define do
  factory :competition do
    name "Aachen Open 2010"
    description "Aachen Open 2010 ist die zweite offizielle Speedcubing Meisterschaft in Aachen"
    starts_at Date.new(2010, 2, 12)
    ends_at Date.new(2010, 2, 14)
  end

  factory :news do
    content "The competition is canceled!"
    competition
  end

  factory :event do
    name "3x3x3"
  end
end