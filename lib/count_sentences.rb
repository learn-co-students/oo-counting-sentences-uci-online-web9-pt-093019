require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    array = self.split(/[.?!]/)
    if array.length > 1
      array.delete_if {|sentence| sentence == ""}
    end
    return array.length
  end
end
