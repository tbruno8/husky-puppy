# This file should contain all the record creation needed to seed
# the database with its default values.
# The data can then be loaded with the rails db:seed command
#   (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
#     { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'factory_girl_rails'

Sanzijing.delete_all

FactoryGirl.create :sanzijing, line: '人之初，性本善。'
FactoryGirl.create :sanzijing, line: '性相近，习相远。'
FactoryGirl.create :sanzijing, line: '苟不教，性乃迁。'
FactoryGirl.create :sanzijing, line: '教之道，贵以专。'

FactoryGirl.create :sanzijing, line: '昔孟母，择邻处。'
FactoryGirl.create :sanzijing, line: '子不学，断机杼。'
FactoryGirl.create :sanzijing, line: '窦雁山，有义方。'
FactoryGirl.create :sanzijing, line: '教五子，名俱扬。'
