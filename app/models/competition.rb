class Competition < ActiveRecord::Base
  validates :name, :description, :starts_at, :ends_at, :presence => true
end
