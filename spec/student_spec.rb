require_relative 'spec_helper'

require 'pry'
describe Student do

  before do
@@ -142,9 +142,13 @@
        jess.name = "Jess"
        jess.grade = 10
        jess.save

        
        first_X_students = Student.first_X_students_in_grade_10(2)
        expect(first_X_students.size).to eq(2)
        expect(first_X_students.size).to eq(2), 'Requested first 2 students in grade 10. Expected Array of two elements'
        expect(first_X_students.all? {|student| student.class == Student}).to eq(true), 'Expected Array of Student instances'
        first_X_students = Student.first_X_students_in_grade_10(3)
        expect(first_X_students.size).to eq(3), 'Requested first 3 students in grade 10. Expected Array of three elements'
        expect(first_X_students.all? {|student| student.class == Student}).to eq(true), 'Expected Array of Student instances'
      end
    end