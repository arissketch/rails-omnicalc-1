class MainController < ApplicationController

  def square
    render({:template=>"calculate/square"})
  end
  def squareresults
    @mynumber=params.fetch("square_number").to_f
    @square=@mynumber**2
    render({:template =>"calculate/squareresults"})
  end

  def squareroot
    render({:template=>"calculate/squareroot"})
  end

  def squarerootresults
    @mynumber=params.fetch("sqrt_number").to_f
    @sqrt=@mynumber**(1/2.0)
    render({:template=>"calculate/squarerootresults"})
  end


  def payment
    render({:template=>"calculate/payment"})
  end

  def paymentresults
    @apr=params.fetch("apr").to_f
    @principal=params.fetch("principal").to_f
    @year=params.fetch("year").to_f

    @numerator = (@apr/100/12)*@principal
    @denominator = (1-(1+@apr/100/12)**(-1*@year*12))
    @payment =@numerator/@denominator
    render({:template=>"calculate/paymentresults"})
  end

  def random
    render({:template=>"calculate/random"})
  end

  def randomresults
    @min=params.fetch("min").to_f
    @max=params.fetch("max").to_f
    @random=rand(@min...@max).to_f
    render({:template=>"calculate/randomresults"})
  end
end
