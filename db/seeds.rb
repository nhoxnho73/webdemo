# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
new_statuses = NewStatus.all.to_a
if new_statuses.empty?
    new_statuses << NewStatus.new(name: "kinh tế")
    new_statuses << NewStatus.new(name: "xã hội")
    new_statuses << NewStatus.new(name: "văn hoá")
    NewStatus.import new_statuses
end

new_discriptions = NewDiscription.all.to_a
if new_discriptions.empty?
    new_discriptions << NewDiscription.new(new_status_id: 1, discription: "Visual Studio Code is a lightweight but powerful source code editor which runs on your desktop a")
    new_discriptions << NewDiscription.new(new_status_id: 2, discription: "Visual Studio Code is a lightweight but powerful source code editor which runs on your desktop b")
    new_discriptions << NewDiscription.new(new_status_id: 3, discription: "Visual Studio Code is a lightweight but powerful source code editor which runs on your desktop c")
    new_discriptions << NewDiscription.new(new_status_id: 1, discription: "Visual Studio Code is a lightweight but powerful source code editor which runs on your desktop d")
    NewDiscription.import new_discriptions
end

admin_user = User.new(
    full_name: "Admin", 
    email: "admin@abc.com", 
    avatar: Faker::Avatar.image,
    password: "12345678", 
    country_id: 1,
    confirmed_at: DateTime.now)
admin_user.save