class Woman < ActiveRecord::Base

  def self.search query_term
    where("name LIKE ? OR area LIKE ?", "%#{query_term}%", "%#{query_term}%")
  end
end
