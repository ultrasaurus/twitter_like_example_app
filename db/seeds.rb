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

if Person.count < 100
  Person.create(:name => "Jean Luc Picard", :language_id => 3)
  Person.create(:name => "William Riker", :language_id => 1)

  48.times do 
    Person.create(:name => Faker::Name.name, :language_id => rand(4)+1)
  end


  def random_list(group, num, exclude)
    total = group.length
    result = []
    num.times do 
      new_person = group[rand(total)]
      if new_person != exclude
        result << new_person
      end
    end
    result
  end

  people = Person.all
  people.each do |person|
    person.followers = random_list(people, 10, person)
    person.followed_people = random_list(people, 10, person)
    person.save
  end

end
