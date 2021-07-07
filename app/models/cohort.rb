class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name: , age:)
    newStudent = Student.new(name: name, age: age)
    self.students << newStudent
  end

  def average_age
    self.students.average('age')
  end

  def total_students
    self.students.count
  end

  def self.biggest
    count = 0
    themaximum = nil
    Cohort.all.collect do |m|
        if m.students.count > count 
            count = m.students.count
            themaximum = m
        end
        
        end
        themaximum
  end


  def self.sort_by_mod
    Cohort.all.order(current_mod: :desc)
    end

end