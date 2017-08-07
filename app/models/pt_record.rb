class PtRecord < ActiveRecord::Base
      validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :email, :presence => true
  validates :email, :uniqueness => { :message => "patient already exists" }
  
  def self.search(search)
  where("firstname LIKE ?", "%#{search}%") 
end
    
end
