class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :requestor
      t.string :request_type
      t.string :category
      t.text :message
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
