class CreateProjectAuthor < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.references :owned_by, index: true, foreign_key: true
    end
  end
end
