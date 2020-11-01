require "./lib/fibonacci_odd_sums/version"

module FibonacciOddSums

  class FibonacciSequence

    def initialize  
      system('clear')
      @sequence_array = [0,1]
      self.generate
      puts @sequence_array
    end

    def generate
      # binding.pry
      while @sequence_array[0-1] < 10000 do
        sum_num = @sequence_array[0-2] + @sequence_array[0-1]
        @sequence_array << sum_num 
        
      end
    end


  end
  

  class Error < StandardError; end
  # Your code goes here...
end
