class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.string :url
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
