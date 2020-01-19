class TripSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :user_id, :renter_id
end
