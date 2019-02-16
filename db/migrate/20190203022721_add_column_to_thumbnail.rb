class AddColumnToThumbnail < ActiveRecord::Migration[5.2]
  def change
    add_reference :thumbnails, :prototype, foreign_key: true
  end
end
