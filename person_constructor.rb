require 'pry'

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name = nil)
    if last_name.nil?
      name_array = first_name.split(' ')
      @first_name = name_array[0]
      @last_name = name_array[1]
    else
      @first_name = first_name
      @last_name = last_name
    end
  end

end

binding.pry
