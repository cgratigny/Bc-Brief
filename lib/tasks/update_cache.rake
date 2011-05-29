task :update_cache => :environment do
  puts "Fetching an update from BaseCamp..."
  Project::update_cache('ibethel.basecamphq.com', 'cgratigny', 'Itm,Ida4sc.')
  puts "done."
end