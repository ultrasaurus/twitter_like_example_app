# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
#

Language.find_or_create_by_code_and_english_name('en', 'English')
Language.find_or_create_by_code_and_english_name('de', 'German')
Language.find_or_create_by_code_and_english_name('fr', 'French')
Language.find_or_create_by_code_and_english_name('es', 'Spanish')
