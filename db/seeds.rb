# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning posts database..."
Post.destroy_all

puts "Creating posts..."
post_1 = { title: "Sécuriser et simplifier la location", content: "Nous sécurisons et simplifions la location. Phasellus ullamcorper ipsum rutrum nunc. Curabitur turpis. In turpis. Morbi mollis tellus ac sapien. Curabitur blandit mollis lacus.", category_id: 1, user_id: 1 }
post_2 = { title: "Tout savoir sur le bail mobilité", content: "Le bail mobilité présente de nombreux avantages pour les bailleurs. Phasellus ullamcorper ipsum rutrum nunc. Curabitur turpis. In turpis. Morbi mollis tellus ac sapien. Curabitur blandit mollis lacus.", category_id: 2, user_id: 1 }
post_3 = { title: "Louis D, le beau gosse nous livre ses secrets", content: "Louis D a toujours rêvé de devenir agent immobilier. Aujourd'hui son rêve est devene réalité. Phasellus ullamcorper ipsum rutrum nunc. Curabitur turpis. In turpis. Morbi mollis tellus ac sapien. Curabitur blandit mollis lacus.", category_id: 3, user_id: 1 }

[ post_1, post_2, post_3 ].each do |attributes|
  post = Post.create!(attributes)
  puts "Created #{post.title}"
end
puts "Finished!"
