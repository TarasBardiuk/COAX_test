CATEGORIES = ['Dystopian', 'Fiction', 'Classic', 'Fantasy',
              'Fictional Biography', 'Short Story', 'Science Fiction']

PRODUCTS = [{ title: '1984',
              author: 'George Orwell',
              rating: '5',
              category: [1, 2, 3] },
            { title: 'Hamlet',
              author: 'William Shakespeare (Shakespeare or not Shakespeare that
                       is the question!)',
              rating: '5',
              category: 3 },
            { title: 'The Glass Bead Game',
              author: 'Hermann Hesse',
              rating: '5+',
              category: [1, 4, 5] },
            { title: 'The Immortal',
              author: 'Jorge Luis Borges',
              rating: 'BEYOUND IMAGINATION',
              category: [2, 6] },
            { title: 'The Time Machine',
              author: 'H. G. Wells',
              rating: '5',
              category: [2, 7] },
            { title: 'Brave New World',
              author: 'Aldous Huxley',
              rating: '4',
              category: [1, 2, 7] }]

CATEGORIES.each do |category|
  Category.where(title: category).first_or_create!
end

PRODUCTS.each do |product|
  Product.where(title: product[:title])
         .first_or_create!(author: product[:author],
                           rating: product[:rating])
         .categories << Category.find(product[:category])
end
