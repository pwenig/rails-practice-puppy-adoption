class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.belongs_to :puppy
    end
  end
end
