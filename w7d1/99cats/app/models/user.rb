# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :session_token, :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, length: { minumum: 6 }, allow_nil: true

    after_initialize :ensure_session_token
    attr_reader :password

    has_many :cats,
        foreign_key: :user_id,
        class_name: :Cat

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save! 
        self.session_token
    end

    def password=(password)
        @password = password

        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user 
            user if user.is_password?(password)
        else
            nil
        end
    end
end
