# code here!
require "pry"

class School
  attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      sorted = {}
      @roster.map do |grade, names|
        sorted[grade] = names.sort
      end
      sorted
    end

  end

end
