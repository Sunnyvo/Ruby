class SayController < ApplicationController
  def hello
    @time = Time.now
    @year = Time.now.year
  end

  def goodbye
  end

  def about
  end  
end
