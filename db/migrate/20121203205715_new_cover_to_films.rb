class NewCoverToFilms < ActiveRecord::Migration
  def self.up
    add_column :films, :cover_file_name, :string
    add_column :films, :cover_content_type, :string
    add_column :films, :cover_file_size, :integer
    add_column :films, :cover_updated_at, :datetime
  end

  def self.down
   remove_column :films, :cover_file_name
   remove_column :films, :cover_content_type
   remove_column :films, :cover_file_size
   remove_column :films, :cover_updated_at
  end

end
