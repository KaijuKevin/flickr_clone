class CreatePicturesWithAttachments < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :image
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
