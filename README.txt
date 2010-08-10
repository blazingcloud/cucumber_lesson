
sudo gem install rspec-rails
sudo gem install cucumber-rails
sudo gem install webrat

rails outside_in_example
cd outside_in_example/
./script/generate rspec
./script/generate cucumber
vi features/manage_news.feature 
rake cucumber
rake db:migrate
rake cucumber
rake cucumber
./script/generate scaffold story title:string content:text
vi config/routes.rb 
rake db:migrate
rake cucumber
vi app/views/stories/index.html.erb
script/server

# not required by cucumber
rm public/index.html 


./script/generate rspec_model story
vi spec/models/story_spec.rb 



change stories_controller.rb, create method
        format.html { redirect_to(root_path) }


