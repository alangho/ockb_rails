# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(title: 'ArrayList', description: 'Array lists are variable-sized list data structures.')
Category.create(title: 'Binary Search Tree', description: 'A binary tree that has been sorted for the purpose of searching.')
Category.create(title: 'Comparators', description: 'Comparing one thing to another thing.')
Category.create(title: 'Double Circular Linked List', description: 'A linked list that has its head and tail 
					connected to each other, and the elements are connected to each other both ways.')
Category.create(title: 'Generics', description: 'Code that is written in terms of "to-be-specified-later" 
					types that are then instantiated when needed for specific types.')
Category.create(title: 'Hashing', description: 'An algorithm that maps data of arbitrary length to data of a fixed length.')
Category.create(title: 'Heaps', description: 'Data structure where larger things are always on top of smaller things, 
					or vice versa.')
Category.create(title: 'Huffman Tree', description: 'A tree made when using Huffman coding, an entropy encoding 
					algorithm used for lossless data compression.')
Category.create(title: 'Iterator', description: 'An object that enables you to traverse a container, particularly lists.')
Category.create(title: 'JUnit Testing', description: 'Using JUnit to test your programs.')
Category.create(title: 'LinkedList', description: 'A list of linked items')
Category.create(title: 'Nodes', description: 'Nodes are the basic unit used to build data structures.')
Category.create(title: 'Priority Queues', description: 'Queues that lets elements with a higher priority go first.')
Category.create(title: 'Queues', description: 'Queues are data structures that follow the "first in, first out" idea.')
Category.create(title: 'Recursion', description: 'To understand recursion, one must first understand recursion.')
Category.create(title: 'Recursive Backtracking', description: 'Using recursion to backtrack when it is determined 
					that you can\'t go further.')
Category.create(title: 'Sorting', description: 'Sorting is any process of arranging items according to a certain sequence.')
Category.create(title: 'Stacks', description: 'Stacks are data structures that follow the "first in, last out" idea.')
Category.create(title: 'Tree Traversals', description: 'The different ways one can go through a tree structure.')

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

users = User.order(:created_at).take(20)
19.times do |n|
  content = Faker::Lorem.paragraph(5)
  title = Faker::Lorem.sentence(8)
  users.each { |user| user.posts.create!(content: content, 
                                        category_id: n,
                                        title: title) }
end