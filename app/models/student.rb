# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(search_term)
    if search_term==''
      self.all
    else
    self.all.select do |student|
      student.name.include?(search_term.capitalize)
    end
  
    end
  end

end
