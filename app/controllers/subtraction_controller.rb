class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_number = params["first_num"].to_f
    @second_number = params["second_num"].to_f

    @result =  @first_number - @second_number

    render({ :template => "subtraction_templates/subtract_results" })
  end
end
