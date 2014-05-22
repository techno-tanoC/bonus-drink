class BonusDrink
  def self.rec_calc(total, mod)
    bonus = mod / 3
    part = mod % 3
    total += mod - part

    if bonus + part < 3
      return total + bonus + part
    end
    rec_calc(total, bonus + part)
  end

  def self.total_count_for(amount)
    buff = amount
    self.rec_calc(0, buff)
  end

  def self.answer
    total_count_for(100)
  end

  def self.debug(amount)
    puts total_count_for(amount)
  end
end
