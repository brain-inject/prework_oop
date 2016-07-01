class List
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    incomplete_task_objects = @tasks.select { |task| !task.complete }
    incomplete_task_objects.map { |task| task.name }
  end

  def number_of_incomplete_tasks
    @tasks.count { |task| !task.complete }
  end

  def delete_complete_tasks
    @tasks.delete_if { |task| task.complete}
  end

  def sort_by_priority
    tasks_high_to_low = @tasks.sort_by { |task| task.priority }.reverse
    tasks_high_to_low.map { |task| task.name}
  end
end









