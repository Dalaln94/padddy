class Item < ActiveRecord::Base

  def self.search(query)
    where("manufacturer like ?", "%#{query}%") || where( "category like ?", "%#{query}%") 
  end
end

