class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.ransackable_attributes(auth_object = nil)
          %w[id email name phone address created_at updated_at province_id]
        end
    
  def self.ransackable_associations(auth_object = nil)
    ["order_items"]
  end

  belongs_to :province
  has_many :order_items
  end
  