class Mechanic
  @@all = []

  attr_reader :name
  attr_accessor :job

  def initialize(name, manager)
    @name = name
    @manager = manager
    @job = 0
    @@all << self
  end

  def work
    completed_job = Job.current_jobs.find do |job|
      if self == job.mechanic
        job.car.status = "Completed"
        self.job -= 1
      end
    end
    Job.current_jobs.delete(completed_job)
  end

  def self.all
    @@all
  end

end

# Mechanics
#
# id | name | manager | job
