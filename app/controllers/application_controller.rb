class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_template/square_form.html.erb" })
  end

  def calculate_square
    # prams = {"elephant"=>"42"}

    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
    render({ :template => "calculation_template/square_results.html.erb" })
  end

  def random_new
    render({ :template => "calculation_template/random_form.html.erb" })
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calculation_template/random_results.html.erb" })
  end
end
