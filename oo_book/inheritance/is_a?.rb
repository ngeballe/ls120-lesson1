module M;    end

class A
  include M
end

class B < A; end
class C < B; end

b = B.new

p b.is_a?(A) == true
p b.is_a?(B) == true
p b.is_a?(C) == false
p b.is_a?(M) == true

p b.kind_of?(A) == true
p b.kind_of?(B) == true
p b.kind_of?(C) == false
p b.kind_of?(M) == true
