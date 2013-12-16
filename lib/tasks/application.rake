desc "seed user"
task :seed_user => :environment do
  100.times do
    User.create(:first_name => Forgery(:name).first_name, :last_name => Forgery(:name).last_name, :age => 15 + rand(60), :location => Forgery(:address).city)
  end
end
