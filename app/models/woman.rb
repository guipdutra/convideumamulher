class Woman < ActiveRecord::Base

  def self.search query_term
    where("area LIKE ?", "%#{query_term}%")
  end
end
