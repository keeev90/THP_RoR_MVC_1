class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  has_many :comments
  has_many :likes
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage" # indique que le model User has_many sent_messages. Ces messages envoyés correspondent à la colonne sender_id de la classe PrivateMessage >>> permet de faire des méthodes .sender et .sent_messages
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage" # indique que le model User has_many received_messages. Ces messages reçus correspondent à la colonne recipient_id de la classe PrivateMessage >>> permet de faire des méthodes .recipient et received_messages

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please enter a valid email adress" } 
end
