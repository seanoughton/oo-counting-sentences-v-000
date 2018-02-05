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
    return_array = []
    (self.split(/[\!|\?|\.]/)).each do |element|
      if element.size > 2
        return_array << element
      end
    end
    return_array.count
  end
end
