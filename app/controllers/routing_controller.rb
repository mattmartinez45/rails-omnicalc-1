class RoutingController < ApplicationController

  def new_square
    render({:template => "pages/new_square"})
  end

  def results_square
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({:template => "pages/results_square"})
  end

  def new_root
    render({:template => "pages/new_root"})
  end

  def results_root
    @the_num_2 = params.fetch("users_number_2").to_f
    @the_result_2 = Math.sqrt(@the_num_2)
    render({:template => "pages/results_root"})
  end

  def new_payment
    render({:template => "pages/new_payment"})
  end
  
  def results_payment
    @the_apr = params.fetch("user_apr").to_f
    @the_apr_percent = @the_apr.to_fs(:percentage, {:precision => 4})
    @the_years = params.fetch("user_years").to_f
  
    @the_r = ((params.fetch("user_apr").to_f)/100)/12
    @the_n = (params.fetch("user_years").to_f)*12
    @the_princ = params.fetch("user_pv").to_f
    @the_principal = @the_princ.to_fs(:currency)
  
    @numerator = @the_r * @the_princ
  
    @periods = @the_n * -1
    @changed_r = 1 + @the_r
    @r_power = @changed_r ** @periods
    @denominator = 1 - @r_power
    @the_result_payment = @numerator / @denominator
    @the_result_payment = @the_result_payment.to_fs(:currency)
    
    render({:template => "pages/results_payment"})
  end

  def new_random
    render({:template => "pages/new_random"})
  end

  def results_random
    @min_val = params.fetch("user_min").to_f
    @max_val = params.fetch("user_max").to_f
    @rand_output = rand(@min_val..@max_val)
    render({:template => "pages/results_random"})
  end


end
