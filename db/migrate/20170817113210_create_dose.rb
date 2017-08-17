class CreateDose < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.string :description
    end
  end
end
