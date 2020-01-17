class PostSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    attributes :id, :text, :user_id, :likes, :post_photo, :comments

    def likes
        object.likes.count
    end

    def post_photo
      if object.photo.attached?
            object.photo.service_url
      end
    end

end