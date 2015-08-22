class Text < ActiveRecord::Base
  serialize :count_hash
  before_save :get_occurrences

  def get_occurrences
    a = self.body.split(/[^\w+]/)
    a.delete("")
    h = a.each_with_object(Hash.new(0)) {|e, hash| hash[e] += 1}
    self.count_hash = h
  end

  WEIGHT = {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10, "k"=>11, "l"=>12, "m"=>13, "n"=>14, "o"=>15, "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, "w"=>23, "x"=>24, "y"=>25, "z"=>26}

  def get_weight
    #
  end
end
