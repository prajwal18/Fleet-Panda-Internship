require './December/1st Week/Todo Manager/task'

class TodoList
  attr_reader :todos

  def initialize
    @todos = []
  end

  def get_tasks
    todos.collect { |task| task.task }
  end

  def add_task(task)
    tasks = get_tasks
    return unless (task.is_a? String) && !(tasks.include? task)

    new_task = Task.new(task, false)
    @todos.push(new_task)
  end

  def complete_task(index)
    return if @todos[index].nil?

    @todos[index].completed = true
  end

  def delete_task(index)
    return false if @todos[index].nil?

    @todos.delete_at(index)
    true
  end

  def show_tasks
    @todos.each { |task| puts task.task }
  end

  def size
    @todos.length
  end
end
