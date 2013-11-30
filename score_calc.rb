class ScoreCalculator
  
  def initialize(scores)
    @scores = scores
    @ninety_counter = 0
    @eighty_counter = 0
    @seventy_counter = 0
    @rest_counter = 0
  end

  def above_90?
    puts "=== >= 90 ==="
    @scores.each do |score|
      if score[:grade].to_i >= 90
        puts score[:name]
      end
    end
  end

  def above_80?
    puts "=== >= 80 ==="
    @scores.each do |score|
      if score[:grade].to_i >= 80 && score[:grade].to_i < 90
        puts score[:name]
      end
    end
  end

  def above_70?
    puts "=== >= 70 ==="
    @scores.each do |score|
      if score[:grade].to_i >= 70 && score[:grade].to_i < 80
        puts score[:name]
      end
    end
  end

  def lower_70?
    puts "=== < 70 ==="
    @scores.each do |score|
      if score[:grade].to_i < 70
        puts score[:name]
      end
    end
  end

  def counter_90
    @scores.each do |score|
      if score[:grade].to_i >= 90
        @ninety_counter += 1
      end
    end
    puts ">= 90: #{@ninety_counter}"
  end

  def counter_80
    @scores.each do |score|
      if score[:grade].to_i >= 80 && score[:grade].to_i < 90
        @eighty_counter += 1
      end
    end
    puts ">= 80: #{@eighty_counter}"
  end

  def counter_70
    @scores.each do |score|
      if score[:grade].to_i >= 70 && score[:grade].to_i < 80
        @seventy_counter += 1
      end
    end
    puts ">= 70: #{@seventy_counter}"
  end

  def counter_rest
    @scores.each do |score|
      if score[:grade].to_i < 70
        @rest_counter += 1
      end
    end
    puts "< 70: #{@rest_counter}"
  end

end