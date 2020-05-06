class AddAvatarToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :avatar, :json,null:false
  end
end
