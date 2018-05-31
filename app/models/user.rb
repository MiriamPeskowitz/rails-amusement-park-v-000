class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rides
    has_many :attractions, through: :rides

    has_secure_password
        
    # validates :name, :password, :nausea, :happiness, :tickets, :height,   presence: true

    def mood
        if nausea > happiness
            mood = "sad"
        else 
            mood = "happy"
            # what about equal? 
        end
        # mood > 0 ? happy : sad
    end

end
