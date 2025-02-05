namespace :db do
    desc "Seed the database with sample data"
    task :seed do
      require_relative '../../db/seeds'
    end
  
    desc "Reset and seed the database"
    task :reset => [:drop, :create, :migrate, :seed]
  end