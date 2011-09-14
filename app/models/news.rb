class News < ActiveRecord::Base
  belongs_to :competition

  validates :competition_id, :content, :presence => true
end
