class StudentsController < ApplicationController
    def new
        @student = Student.new
    end
    def create
        @student = Student.new(params[:student].permit(:nom, :ape, :grad, :dir ))
        @student.save
            redirect_to :action => generado, :id => @student.id
    end
    def confirmacion
        @student = Student.find(params[:id])
    end
    def global
        @student = Student.all
    end
end
