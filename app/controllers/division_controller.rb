class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "division_templates/division_form" })
  end

  def divide_these
    @first_number = params["first_number"].to_f
    @second_number = params["second_number"].to_f

    @result =  @first_number / @second_number

    render({ :template => "division_templates/divide_result" })
  end
end
