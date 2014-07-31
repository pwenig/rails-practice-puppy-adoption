class CreateDashboard < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.belongs_to :puppy
      t.belongs_to :user
    end
  end
end
