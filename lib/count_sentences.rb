require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_string = self.tr(","," ")
    new_string = self.squeeze(".")
    new_string = new_string.squeeze("!")
    new_string.split(/[\.|?|!]/).count
  end
end
