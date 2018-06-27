
# http://railscasts.com/episodes/126-populating-a-database?autoplay=true

# rails g scaffold Contact1  name address active:boolean updatetime:datetime
# rails destroy  scaffold Contact1


namespace :db do
  desc "fill database"

  task :populate => :environment do
    require 'populator'
    require 'faker'

    #[Contact1].each(&:delete_all)

    Type.populate 19 do |a12|
      a12.name     = Faker::Book.title
      a12.number  = Faker::Number.between(127, 999)
      a12.year    = Faker::Time.backward(1799, :all)
      a12.sort    = Faker::Number.between(101, 101)
      a12.subtype   = Faker::Book.author
      a12.active   = Faker::Boolean.boolean(0.8)
    end

  end

end

    
=begin
block comment start
    
    Customer.populate 3 do |a|
      a.name    = Faker::Name.name
      a.address  = Faker::Address.street_address
      a.phone = Faker::PhoneNumber.phone_number
      a.discount = [0.0, 0.1, 0.15, 0.2]
    end

    Passenger.populate 12 do |a12|
      a12.rental_record_id     = Faker::Number.between(1, 4)
      a12.pasenger_list_id  = Faker::Number.between(1, 12)
    end


    #[Category].each(&:delete_all)

     Category.populate 22 do |a|
       a.name    = Faker::Company.buzzword
       #a.name    = Faker::Music.instrument
       a.active  = Faker::Boolean.boolean(0.7)
     end

     Cd.populate 34 do |a|
       a.name    = Faker::Book.title
       a.artist  = Faker::Book.author
       a.published  = Faker::Time.backward(990, :all)
     end


    # Contact1.populate 2 do |a|
      # a.name    = Faker::Name.name
      # a.address  = Faker::Address.street_address
      # a.updatetime = Time.now
      # a.active = Faker::Boolean.boolean
    # end

block comment
=end     