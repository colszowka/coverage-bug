class Competition < ActiveRecord::Base
  has_many :news

  validates :name, :description, :starts_at, :ends_at, :presence => true
  validate :cannot_end_before_it_started

private
  def cannot_end_before_it_started
    unless starts_at.nil? or ends_at.nil?
      errors.add(:ends_at, "can't be prior to start date") if ends_at < starts_at
    end
  end
end
