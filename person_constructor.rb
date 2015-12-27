require 'pry'

class Person
  attr_reader :first_name, :last_name, :middle_name

  def initialize(first_name, last_name = nil, middle_name = nil)
    if middle_name.nil?
      name_array = first_name.split(' ')
      @first_name = name_array[0]
      @last_name = name_array[1]
    elsif last_name.nil?
      name_array = first_name.split(' ')
      @first_name = name_array[0]
      @last_name = name_array[1]
      @middle_name = name_array[2]
    else
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name
    end
  end

end

binding.pry
