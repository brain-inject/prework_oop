class Task

  def initialize(name, priority=5)
    @name = name
    @complete = false
    @priority = priority
  end

  def name
    @name
  end

  def complete
    @complete
  end

  def priority
    @priority
  end

  def priority=(new_priority)
    @priority = new_priority
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = !@complete
  end
end