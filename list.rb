class List

  def initialize
    @tasks = []
  end
  
  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []

    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    
    task_names
  end

  def number_of_incomplete_tasks
    counter = 0

    @tasks.each do |task|
      if task.complete == false
        counter += 1
      end
    end

    counter
  end

  def delete_complete_tasks
    complete_tasks = []

    @tasks.each do |task|
      if task.complete
        complete_tasks << task
      end
    end

    complete_tasks.each do |task|
      @tasks.delete(task)
    end
  end

  def sort_by_priority
    sorted_array_low_to_high = @tasks.sort_by { |task| task.priority }
    sorted_array_high_to_low = sorted_array_low_to_high.reverse
    sorted_names = []

    sorted_array_high_to_low.each do |task|
      sorted_names << task.name
    end

    sorted_names
  end
end









