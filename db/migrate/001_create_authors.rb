class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.belongs_to :user
      t.belongs_to :project
    end
  end
end
