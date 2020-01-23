class Trip < ApplicationRecord
    validates :start_date, presence: true
    validates :end_date, presence: true
    
    belongs_to :user
    belongs_to :renter, class_name: 'User', optional: true

end
