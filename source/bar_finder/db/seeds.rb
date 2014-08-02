require 'yelp'

client = Yelp::Client.new({ consumer_key: 'czBhehDumkJkDpDWXvK7FQ',
                            consumer_secret: 'yMCjEjpCjjejhryLIAAnd4VYRS0',
                            token: 'fd5_owWkMhGMw7bfH24l0NJuhDXAPIk5',
                            token_secret: 'O1yZM6jmAmp7In79NAqZwrJ4gSM'
                         })

params = { term: 'bars',
           rating: 4..5
         }

results = client.search('San Francisco', params).businesses
p results.count

results.each_with_index do |bar, index|
  new_bar = Bar.create(:name => bar.name, :rating => bar.rating, :image_url => bar.image_url, :address => bar.location.display_address[0])
  neighborhoods = bar.location.neighborhoods
  neighborhoods.each do |neighborhood_name|
    new_neighborhood = Neighborhood.create(:name => neighborhood_name)
    new_bar.neighborhoods << new_neighborhood
  end
end


