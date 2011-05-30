task :update_cache => :environment do
  puts "Fetching an update from BaseCamp..."
  # we need a user in order to do the update for them
  # Project::update_cache(user.basecamp_url + '.basecamphq.com', user.basecamp_api_key)
  puts "done."
end