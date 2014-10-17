class AddAuthorIdToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_id, :integer
    add_index :authors, :author_id
  end
end
