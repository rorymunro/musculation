class User < ActiveRecord::Base
	has_many :poitrines, dependent: :destroy
	has_many :backs, dependent: :destroy
	has_many :shoulders, dependent: :destroy
    has_many :day1s, dependent: :destroy
    has_many :day2s, dependent: :destroy
    has_many :day3s, dependent: :destroy
    has_many :customs, dependent: :destroy
    has_many :topics, :dependent => :destroy
has_many :posts, :dependent => :destroy

	before_save { self.email = email.downcase }
	before_create :create_remember_token
validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
has_secure_password
validates :password, length: { minimum: 6 }
  

def feed
	Back.where("user_id = ?", id)
end
def feedp
	Poitrine.where("user_id = ?", id)
end
def feeds
	Shoulder.where("user_id = ?", id)
end
def feed1
	Day1.where("user_id = ?", id)
end
def feed2
	Day2.where("user_id = ?", id)
end
def feed3
	Day3.where("user_id = ?", id)
end
def feedc
	Custom.where("user_id = ?", id)
end


def User.new_remember_token
	SecureRandom.urlsafe_base64
end

def User.encrypt(token)
	Digest::SHA1.hexdigest(token.to_s)
end

private 

 def create_remember_token
self.remember_token = User.encrypt(User.new_remember_token)
end
end
