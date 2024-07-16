class Province < ApplicationRecord
  
  def self.ransackable_associations(auth_object = nil)
    ["customers"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "updated_at"]
  end
  
  has_many :customers
end