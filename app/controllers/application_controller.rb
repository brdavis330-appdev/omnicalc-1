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

  def root_new
    render({ :template => "calculation_template/square_root_form.html.erb" })
  end

  def calculate_root
    @num = params.fetch("user_number").to_f
    @square_root_of_num = @num ** 0.5

    render({ :template => "calculation_template/square_root_results.html.erb" })
  end

  def payment_new
    render({ :template => "calculation_template/payment_form.html.erb" })
  end

  def calculate_payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

    n = @years * 12
    r = @apr / 100 / 12
    @numerator = r * @principal
    @denominator = 1 - (1 + r) ** -n
    @payment = @numerator / @denominator

    render({ :template => "calculation_template/payment_results.html.erb" })
  end
end
