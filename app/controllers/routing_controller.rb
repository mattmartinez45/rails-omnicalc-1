class RoutingController < ApplicationController

  def new_square
    render({:template => "pages/new_square"})
  end

  def results_square
    render({:template => "pages/results_square"})
  end

  def new_root
    render({:template => "pages/new_root"})
  end

  def results_root
    render({:template => "pages/results_root"})
  end

  def new_payment
    render({:template => "pages/new_payment"})
  end
  
  def results_payment
    render({:template => "pages/results_payment"})
  end

  def new_random
    render({:template => "pages/new_random"})
  end

  def results_random
    render({:template => "pages/results_random"})
  end


end
