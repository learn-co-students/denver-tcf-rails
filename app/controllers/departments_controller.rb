class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
    @employees = Employee.all
  end

  def update
    @department.update(department_params)

    redirect_to departments_path
  end

  def destroy
    @department.delete

    redirect_to departments_path
  end

  private

  #whitelisting what params we take in
  def department_params
    params.require(:department).permit(:name, :head_count, :manager_id)
  end

  def set_department
    @department = Department.find(params["id"])
  end

end
