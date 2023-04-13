class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_template/square_form.html.erb" })
  end

  def calculate_square
    # prams = {"elephant"=>"42"}

    @num = params.fetch("elephant").to_i
    @square_of_num = @num ** 2
    render({ :template => "calculation_template/square_results.html.erb" })
  end
end
