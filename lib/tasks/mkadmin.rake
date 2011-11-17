namespace :db do
  desc "Create db editors"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

    User.create!(:fname                 => "Allyson",
                 :lname                 => "Kendall",
                 :email                 => "akendall@reprographix.com",
                 :password              => "repro55",
                 :password_confirmation => "repro55",
                 :group                 => "corp"
                )
    
    User.create!(:fname                 => "Bryan",
								 :lname                 => "Harpold",
                 :email                 => "bharpold@reprographix.com",
                 :password              => "repro66",
                 :password_confirmation => "repro66",
		             :group                 => "corp"
                )
    
    User.create!(:fname                 => "Daniel",
                 :lname                 => "Asberry",                
                 :email                 => "dasberry@reprographix.com",
                 :password              => "repro77",
                 :password_confirmation => "repro77",
                 :group                 => "corp"
                )
  end
end

