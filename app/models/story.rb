class Story < ApplicationRecord

  def published?
    published_at.present?
  end

end
