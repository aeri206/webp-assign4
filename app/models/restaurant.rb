class Restaurant < ApplicationRecord
    validates :city, presence: true
    validates :name, :description, presence: true
    validates :description, presence: true

end
