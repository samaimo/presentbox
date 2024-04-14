class CreateMypages < ActiveRecord::Migration[7.0]
  def change
    create_table :mypages do |t|

      t.timestamps
    end
  end
end
