class Woman < ActiveRecord::Base

  def self.search name
    where("name LIKE ?", "%#{name}%")
  end
end
