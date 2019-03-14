class Story < ApplicationRecord

  has_many :characters

  def published?
    published_at.present?
  end

end
