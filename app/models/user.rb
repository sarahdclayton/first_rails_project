# email:string, password_digest:string
# w/ has_secure_password...password:string virtual, password_confirmation:string virtual
class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/, message: "must be a valid email address" }
    #validates :email, format : {with: URI::MailTo::Email_REGEXP}
end
