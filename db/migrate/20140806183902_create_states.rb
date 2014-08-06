class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :abvr
      t.boolean :predet
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
