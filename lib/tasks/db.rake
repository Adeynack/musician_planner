namespace :db do
  desc "Reset the database for development (drop, migrate, create, seed with fixtures)"
  task :dev_reset do
    puts "Dropping databases"
    sh "bin/rake db:drop"
    puts
    puts "Deleting schema (to force re-creation with updated migrations)"
    sh "rm -rf db/schema.rb"
    puts
    puts "Migrating database schemas"
    sh "bin/rake db:migrate"
    puts
    puts "Creating databases"
    sh "bin/rake db:create"
    puts
    puts "Seeding database with fixtures"
    sh "bin/rake db:fixtures:load"
  end
end
