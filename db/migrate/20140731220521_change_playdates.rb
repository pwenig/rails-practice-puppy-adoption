class ChangePlaydates < ActiveRecord::Migration
  def change
    remove_column :playdates, :puppy_id
    remove_column :playdates, :user_id
    add_column :playdates, :dashboard_id, :integer
  end
end
