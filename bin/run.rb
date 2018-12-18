require_relative "../lib/car"
require_relative "../lib/customer.rb"
require_relative "../lib/services.rb"
require_relative "../lib/manager.rb"
require_relative "../lib/mechanic.rb"
require_relative "../lib/job.rb"
require 'pry'


norman = Manager.new("norman")
worker1 = norman.new_hire("worker1")
kenny = Customer.new("kenny", "oil change")
kenny.add_car("2001", "honda", "prelude")
kenny.add_car("2004", "mazda", "rx-8")
norman.assign_job



binding.pry
