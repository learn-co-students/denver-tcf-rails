class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_path
    else
      @departments = Department.all
      render :new
    end
  end

  def new
    @employee = Employee.new
    @departments = Department.all
  end

  def show
  end

  def edit
    @departments = Department.all
  end

  def update
    @employee.update(employee_params)

    redirect_to employees_path
  end

  def destroy
    @employee.delete

    redirect_to employees_path
  end

  private

  def employee_params
    params.require( :employee).permit(:name, :start_date)
  end

  def set_employee
    @employee = Employee.find(params["id"])
  end

end
