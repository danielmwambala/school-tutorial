class Student < ApplicationRecord
    validates :first_name, :last_name, :email, :phone_number, :address, :date_of_birth, :contact_number, :grade, presence: true
end
