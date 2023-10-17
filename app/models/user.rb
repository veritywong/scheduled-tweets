# email:string
# passowrd_digest:string
#
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    # method, add password digest column, add passowrd and password confirmation to user (virtual attributes), will bcrypt password
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
