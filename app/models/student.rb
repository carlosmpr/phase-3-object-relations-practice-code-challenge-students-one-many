class Student < ActiveRecord::Base
  belongs_to :cohort


  def current_mod
    self.cohort.name
  end

end