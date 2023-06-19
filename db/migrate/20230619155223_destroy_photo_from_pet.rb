class DestroyPhotoFromPet < ActiveRecord::Migration[7.0]
  def change
    remove_column :pets, :photo
  end
end
