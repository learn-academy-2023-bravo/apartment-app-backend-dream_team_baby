class Apartment < ApplicationRecord
belongs_to :user

validates :street, :unit, :city, :state, :square_footage, :pets, :image, :bathrooms, :bedrooms, :price, presence: true

end
