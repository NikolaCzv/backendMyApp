class PostSerializer < ActiveModel::Serializer
    attributes :id, :text, :pic_url, :user_id, :likes, :comments

    def likes
        object.likes.count
    end
end