class AddDefaultValueToProfilePicUrl < ActiveRecord::Migration[6.0]
  def change
      change_column :users, :profile_pic_url, :string, default: 'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'
  end
end
