class SecretHandshake

  def initialize(input)
    @data = input
    @solution = []
  end

  def commands
    unless @data.to_i == 0
      @data = @data.to_s(2)
    end

    @data = @data.chars.reverse!    
    position_of_ones = get_array_with_position_of_ones
    extract_handshakes(position_of_ones)
    reverse?
    @solution
  end

  private

  def extract_handshakes(position_of_ones)
    position_of_ones.each do |x|
      if x == 0
        @solution << "wink"
      end
      if x == 1
        @solution << "double blink"
      end
      if x == 2
        @solution << "close your eyes"
      end
      if x == 3
        @solution << "jump"
      end
    end
  end

  def get_array_with_position_of_ones
    position_of_ones = []
    @data.each_with_index do |i, x|
      if i == "1"
        position_of_ones << x 
      end
    end
    position_of_ones
  end

  def reverse?
    if @data.length > 4
      @solution.reverse!
    end
  end
end