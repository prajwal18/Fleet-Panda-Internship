require './December/1st Week/Todo Manager/todoList'

describe TodoList do
  describe '#add_task' do
    todo_list = TodoList.new

    it 'should add a task in the todo list' do
      task = 'Prepare Breakfast'

      todo_list.add_task(task)

      added_successfully = todo_list.get_tasks.include? task

      expect(added_successfully).to eql(true)
    end

    it "should not add a task that's already in the list" do
      task = 'Prepare Breakfast'

      todo_size = todo_list.todos.length

      todo_list.add_task(task)

      expect(todo_list.todos.length).to eql(todo_size)
    end

    it 'should fail to add any value other than a string into the todo list' do
      task = 9090

      todo_size = todo_list.todos.length

      todo_list.add_task(task)

      expect(todo_list.todos.length).to eql(todo_size)
    end
  end

  describe '#complete_task' do
    todo_list = TodoList.new

    it 'should change the status of a task to completed' do
      todo_list.add_task('Task 1')

      todo_list.add_task('Task 2')

      todo_list.add_task('Task 3')

      idx = 2

      todo_list.complete_task(idx)

      task = todo_list.todos[idx]

      expect(task.completed).to eql(true)
    end

    it 'should do nothing when trying to complete a task that does not exist' do
      idx = 9

      todo_list.complete_task(idx)

      expect(todo_list.todos[idx]).to eql(nil)
    end
  end

  describe '#delete_task' do
    todo_list = TodoList.new

    it 'should reduce the size of the todos after deleting a task' do
      todo_list.add_task('Task 1')
      todo_list.add_task('Task 2')
      todo_list.add_task('Task 3')

      initial_size = todo_list.size

      todo_list.delete_task(2)

      expect(initial_size).to be > todo_list.size
    end

    it 'should return -1 when trying to delete a task that does not exist' do
      todo_list.add_task('Task 4')
      todo_list.add_task('Task 5')
      todo_list.add_task('Task 6')

      deleted = todo_list.delete_task(20)

      expect(deleted).to eql(false)
    end
  end

  describe '#show_task' do
    todo_list = TodoList.new
    it 'should display all the todos in the list' do
      todo_list.add_task('Task 1')
      expect do
        todo_list.show_tasks
      end.to output("Task 1\n").to_stdout
    end
  end
end
