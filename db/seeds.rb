# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Product.delete_all

Product.create(:title => 'Mobile 1',
    :description => 'Number one engine oil in market from Exxon Mobile Company',
    :image_url => '/images/mobile.jpg',
    :price => 19.99)
Product.create(:title => 'Castrol GTX3',
    :description => 'Best engine oil from Castrol',
    :image_url => '/images/gtx3.jpg',
    :price => 15.05)