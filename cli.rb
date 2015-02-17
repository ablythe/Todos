require 'thor'
class MyCLI < Thor
  desc "add", "add TASK to LIST"
	option :list, :required => true
	option :task, :required => true
  def add
    adder(options[:list], options[:task])   
  end

  desc "due", "add DUE DATE to TASK"
  option :id, :type => :numeric, :required => true
  option :due_date, :type => :string, :required => true
  def due
    duer(options[:id], options[:due_date])
  end

  desc "done", "mark TASK as done"
  option :id, :type => :numeric, :required => true
  def done
    mark_complete options[:id]
  end

  desc "list", "list TASKS"
  option :all, :type => :string
  option :name, :type => :string
  def list
    if options[:all]
      lister all: true
    elsif options[:name]
      lister name: options[:name]
    else
      lister
    end
  end

  desc "Next", "finds a random TASK"
  def next
    random
  end

  desc "search", "searches for a TASK containing SEARCH STRING"
  option :str, :type => :string, :required => true
  def search
    searcher options[:str]
  end
end

