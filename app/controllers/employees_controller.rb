class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(employee_params)
      if @employee.valid?
        @employee.save
        redirect_to employees_path
      else
        flash[:message]=@employee.errors.full_messages[0]
        redirect_to new_employee_path
      end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  def edit
    @employee = Employee.find(params[:id])

  end

  def update
    employee = Employee.find(params[:id])
    employee.update(employee_params)
    redirect_to employees_path(employee)
  end

private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog, :img_url, :dog_id)
  end

end
