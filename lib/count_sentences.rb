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

    # regular expression solution
    # /\.|\?|!/ is a regular expression that searches for periods, 
    # question marks and exclamations in a string

  def count_sentences
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.length
  end
end