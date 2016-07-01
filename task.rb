class Task

  attr_reader :name
  attr_accessor :complete, :priority

  def initialize(name, priority=5)
    @name = name
    @complete = false
    @priority = priority
  end

  def complete!
    complete = true
  end

  def toggle_complete!
    complete = !complete
  end
end