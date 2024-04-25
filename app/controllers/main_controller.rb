class MainController < ApplicationController

  def square
    render({:template=>"calculate/square"})
  end
  def squareresults
    render({:template =>"calculate/squareresults"})
  end

end
