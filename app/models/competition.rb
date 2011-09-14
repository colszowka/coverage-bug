class Competition < ActiveRecord::Base
  has_many :news

  validates :name, :description, :starts_at, :ends_at, :presence => true
  validate :ends_at_cannot_be_before_starts_at

private
  def ends_at_cannot_be_before_starts_at
    unless starts_at.nil? or ends_at.nil?
      errors.add(:ends_at, "can't be prior to start date") if ends_at < starts_at
    end
  end
end
