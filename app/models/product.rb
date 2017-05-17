class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  scope :with_categories, lambda { |search|
    joins(:categories).where(categories: { title: search }).group(:id)
                      .having("count(categories.id) = #{search.count}")
  }
end
