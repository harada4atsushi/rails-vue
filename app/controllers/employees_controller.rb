class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :update]

  def index
    @employees = Employee.all
    # render json: @employees
  end

  def show
    render json: @employee
  end

  def update
    @employee.update(employee_params)
    render json: @employee
    # if @employee.update(employee_params)
    # redirect_to employees_path, notice: '更新しました'
    # else
    #   render :edit
    # end
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:email)
    end
end
