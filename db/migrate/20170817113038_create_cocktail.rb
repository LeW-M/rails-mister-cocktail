class CreateCocktail < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :name
    end
  end
end
