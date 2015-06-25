# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create an admin user

#tmp_file = open(Faker::Avatar.image)
#FileUtils.mv tmp_file, '/tmp/avatar.png'

admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin',
  #avatar:   File.open('/tmp/avatar.png') 
)

admin.skip_confirmation!
admin.save!

# Create premium members

#tmp_file = open(Faker::Avatar.image)
#FileUtils.mv tmp_file, '/tmp/avatar.png'

member = User.new(
  name:     Faker::Name.name,
  email:    "member1@example.com",
  password: "helloworld",
  role:     "premium"
  #avatar:   File.open('/tmp/avatar.png') 
)

member.skip_confirmation!
member.save!

member = User.new(
  name:     Faker::Name.name,
  email:    "member2@example.com",
  password: "helloworld",
  role:     "premium"
  #avatar:   File.open('/tmp/avatar.png') 
)

member.skip_confirmation!
member.save!

# Create standard member

#tmp_file = open(Faker::Avatar.image)
#FileUtils.mv tmp_file, '/tmp/avatar.png'

  member = User.new(
    name:     Faker::Name.name,
    email:    "member3@example.com",
    password: "helloworld",
    role:     "standard"
    #avatar:   File.open('/tmp/avatar.png') 
  )

  member.skip_confirmation!
  member.save!


# Create standard members
5.times do 
#tmp_file = open(Faker::Avatar.image)
#FileUtils.mv tmp_file, '/tmp/avatar.png'

  member = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10),
    role:     "standard"
    #avatar:   File.open('/tmp/avatar.png') 
  )

  member.skip_confirmation!
  member.save!
end

# Create premium members
5.times do 
#tmp_file = open(Faker::Avatar.image)
#FileUtils.mv tmp_file, '/tmp/avatar.png'

  member = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10),
    role:     "premium"
    #avatar:   File.open('/tmp/avatar.png') 
  )

  member.skip_confirmation!
  member.save!
end

# create Public Wikis
5.times do
  Wiki.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    user: User.all.sample
  )
end

# create Private Wikis
5.times do
  Wiki.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    user: User.all.sample,
    private: true
  )
end


puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"