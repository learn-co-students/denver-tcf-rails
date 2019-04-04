class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    Employee.create(employee_params)
    redirect_to employees_path
  end

  def new
    @employee = Employee.new
    @departments = Department.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
    @departments = Department.all
  end

  def update
    employee = Employee.find(params[:id])
    employee.update(employee_params)

    redirect_to employees_path
  end

  def destroy
    employee = Employee.find(params[:id])
    employee.delete

    redirect_to employees_path
  end

  private

  def employee_params
    params.require( :employee).permit(:name, :start_date)
  end
end
