require.pry
class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    binding.pry
  end

  def index
    @classrooms = Classroom.all
  end
end
