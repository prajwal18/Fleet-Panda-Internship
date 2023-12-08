class Task
  attr_reader :task, :completed
  attr_accessor :task, :completed

  def initialize(task, completed)
    @task = task
    @completed = completed
  end
end
