# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

if Rails.env.development? || Rails.env.staging?
  4.times{create(:comment, :post_comment)}
  puts "Email:- #{User.last.email} Users Password:- example@123"
end
