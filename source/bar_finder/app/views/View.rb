
class View
  def self.start()
    puts "Type in the neighborhood that you want to get your drink on at."
    puts "Neighborhoods:"
    puts "SoMa"
    puts "Financial District"
    puts
  end

  def self.display_bar(counter, bar)
        puts "-"*50
        puts "[#{counter}] #{bar.name}"
        puts "Address: #{bar.address}"
        puts "Rating: #{bar.rating}"
        neighborhoods = []
        bar.neighborhoods.each {|neighborhood| neighborhoods << neighborhood.name}
        puts "Neighborhood #{neighborhoods}"
      end


end
