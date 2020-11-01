require "./lib/fibonacci_odd_sums/version"

module FibonacciOddSums

  class FibonacciSequence

    def initialize  
      system('clear')
      @sequence_array = [0,1]
      @odds_array = []
      self.generate
      self.extract_the_odds
      self.sum_the_odds
    end

    def generate
      while @sequence_array[0-1] < 10000 do
        sum_num = @sequence_array[0-2] + @sequence_array[0-1]
        @sequence_array << sum_num 
      end
      p 'Fibonacci Array:'
      p @sequence_array
    end

    def extract_the_odds
      @sequence_array.map do |num| 
        if num.odd? 
          @odds_array << num
        end
      end
      p 'Odd Numbers Array:'
      p @odds_array
    end

    def sum_the_odds
      @odd_sum = @odds_array.inject(0){|sum,x| sum = sum +x}
      p @odd_sum
    end
    
  end
  

  class Error < StandardError; end
  # Your code goes here...
end
