require_relative 'config/application'
require_relative 'app/controllers/Controller.rb'


hood = ARGV[0...(ARGV.length)].join(" ")
View.start()
Controller.start(hood)


