class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :renter, class_name: 'User', optional: true
end
