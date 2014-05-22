require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.rec_calc(0, 0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }

  specify { expect(BonusDrink.rec_calc(0, 3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }

  specify { expect(BonusDrink.rec_calc(0, 5)).to eq 7 }
  specify { expect(BonusDrink.total_count_for(5)).to eq 7 }


  specify { expect(BonusDrink.rec_calc(0, 11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }

  specify { expect(BonusDrink.answer).to be_a(Integer) }
end
