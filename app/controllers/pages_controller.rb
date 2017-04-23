class PagesController < ApplicationController
  def home
    #Added Q2
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
    #Added Q2

  end

  # def stringify
  #   @text = "You are nothing!"
  # end
  #Added Q1 Part 2
  def stringify
    @text = "You are nothing!"
    name = params[:name].nil? ? "" : params[:name].strip  
    adjective = params[:adjective].nil? ? "" : params[:adjective].strip
    if (name.length > 0 && adjective.length > 0) then
      @text = "#{name} is so #{adjective}"
    else 
      @text = "You are nothing!"
    end
  end
  #Added Q1 Part 2

  def age
  end

  # Added for Q3
  def person
    name = params[:name].nil? ? "" : params[:name].strip
    age = params[:age].nil? ? 0 : params[:age].to_i
    @person = Person.new(name, age)
  end
  
  #Added for Q4
  def me
    
  end
  
end
