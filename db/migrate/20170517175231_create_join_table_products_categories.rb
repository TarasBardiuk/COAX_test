class CreateJoinTableProductsCategories < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :categories
  end
end
