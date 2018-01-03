class String
  def camelcase
    string = self.split
    new_string = []
    string.each {|x| new_string << x.capitalize }
    return new_string.join
  end
end
