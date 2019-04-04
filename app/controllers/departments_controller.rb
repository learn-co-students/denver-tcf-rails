class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    # render json: @departments
  end

  def create
    Department.create(department_params)
    redirect_to departments_path
  end

  def new
    @department = Department.new
    @employees = Employee.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def edit
    @department = Department.find(params[:id])
    @employees = Employee.all
  end

  def update
    department = Department.find(params[:id])
    department.update(department_params)

    redirect_to departments_path
  end

  def destroy
    department = Department.find(params[:id])
    department.delete

    redirect_to departments_path
  end

  private

  #whitelisting what params we take in
  def department_params
    params.require( :department).permit(:name, :head_count, :manager_id)
  end

end
