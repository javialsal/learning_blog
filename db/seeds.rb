puts "Launching seed..."
puts "Creating admin user..."

user = User.where(email: "javier@mail.com").first_or_initialize
user.update!(
  password: "password",
  password_confirmation: "password"
)

puts "Admin user created."
puts "Deleting Blog Posts..."

BlogPost.destroy_all

puts "Blog Posts deleted."

puts "Creating Blog Posts..."

100.times do |i|
  BlogPost.create title: "Blog Post #{i}", content: "Hello world", published_at: Time.current
end

puts "#{BlogPost.count} Blog Pots created."
