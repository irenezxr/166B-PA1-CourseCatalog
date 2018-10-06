# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"
require "activerecord-import"

courses = JSON.parse(open('db/jsonfiles/course.json').read)
course = courses.map do|c|
  Course.new(c.except('independent_study','subjects','credits','requirements'))
end

Course.import(course)


instructors = JSON.parse(open('db/jsonfiles/instructor.json').read)
instructor = instructors.map do|i|
  Instructor.new(i.except('id'))
end

Instructor.import(instructor)


subjects = JSON.parse(open('db/jsonfiles/subject.json').read)
subject = subjects.map do|s|
  Subject.new(s.except('segments','id'))
end

Subject.import(subject)
