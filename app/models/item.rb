class Item < ActiveRecord::Base

  def self.search(query)
    # where(:name, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end

