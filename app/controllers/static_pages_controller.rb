class StaticPagesController < ApplicationController
  def home
  	@courses = Course.all
  	@instructors = Instructor.all
  	@subjects = Subject.all
  end
end
