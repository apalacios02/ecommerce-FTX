class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  # Validations
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10,15}\z/, message: "must be between 10 to 15 digits" }
  validates :address, presence: true
  validates :province_id, presence: true, numericality: { only_integer: true }
  
  def self.ransackable_attributes(auth_object = nil)
          %w[id email name phone address created_at updated_at province_id]
        end
    
  def self.ransackable_associations(auth_object = nil)
    ["order_items"]
  end

  belongs_to :province
  has_many :order_items
  end
  