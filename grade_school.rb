class School
  def initialize
    @school = Hash.new {|h,k| h[k] = []}
  end
  
  def to_hash
    @school.each_pair {|k, v| v.sort!}
    Hash[@school.sort]
  end
  
  def add(pupil, grade)
    @school[grade] << pupil
  end
  
  def grade(number)
    @school[number].sort
  end
end
