# Clear existing data
Journal.destroy_all
User.destroy_all

# Create a user
user = User.create!(email: "a@a.com", password: "123456")

# Create journals associated with the user
Journal.create!(name: "goals", user: user)
Journal.create!(name: "trauma", user: user)
Journal.create!(name: "relationship", user: user)
