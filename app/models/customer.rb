class Customer < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "email", "id", "id_value", "name", "password", "phone", "updated_at"]
  end
  
  end
  