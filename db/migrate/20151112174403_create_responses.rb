class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|

      t.belongs_to :request
      t.timestamps null: false
    end
  end
end
