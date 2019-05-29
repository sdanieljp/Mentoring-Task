class User < ApplicationRecord
  
  has_secure_password
  
  validates :name,
    presence: true,
    length: { maximum: 15 }
  validates :email, 
    presence: true,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password,
    presence: true,
    format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
    
end
