require_relative '../views/View'

class Controller
  def self.start(hood)
    counter = 1
    Bar.all.each {|bar|
      selected_bars = bar.neighborhoods.select {|neighborhood| neighborhood.name == hood}
      if selected_bars != []
        View.display_bar(counter, bar)
        counter += 1
      end
      break if counter >= 4
    }
  end
end

