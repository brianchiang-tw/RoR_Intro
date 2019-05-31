#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 

  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)

  attr_accessor :highest_wf_count, :highest_wf_words, :content, :line_number

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number

  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.
  def initialize( lineText, lineNumber )

    # Initialize class attribute: content
    @content = lineText

    # Initialize class attribute: line_number
    @line_number = lineNumber

    # Initialize class attribute: highest_wf_words
    @highest_wf_words = Array.new

    # Call class method: calculate_word_frequency
    self.calculate_word_frequency
  end


  #* calculate_word_frequency() - calculates result
  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
  
  def calculate_word_frequency()
    # create a word frequenct hash table with default value = 0
    word_frequency = Hash.new(0)

    # Update frequency for each word (with forcedly convert to lower case)
    @content.split.each do | singleWord |
      word_frequency[singleWord.downcase] +=1
    end

    #highest_freq_pair = word_frequency.select{ |key,value| value == word_frequency.values.max }

    # get the highest frequency from different words
    @highest_wf_count = word_frequency.values.max

    # push those words with highest frequency into highest_wf_words ( array of words )
    word_frequency.each do | key, value |

      if value == @highest_wf_count
        @highest_wf_words << key
      end

    end

  end





end

#  Implement a class called Solution. 
class Solution

  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines
  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.


  def initialize()

    # array of LA obj
    @analyzers = Array.new

    # a number to record highest word frequenct, initialize to nil
    @highest_count_across_lines = nil

    # array of LA obj filter with word frequency, initialize to nil
    @highest_count_words_across_lines = nil
  end

  # Implement the following methods in the Solution class.


  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file
  def analyze_file

    lineCount = 1

    fileName = 'test.txt'

    File.foreach( fileName ) do | lineContent |

      # Create a new LA obj for each line
      new_LA_obj = LineAnalyzer.new( lineContent, lineCount )

      # push LA_obj into LineAnalyzer array
      @analyzers << new_LA_obj

      # update line count
      lineCount+=1
    end




  end


  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.
  
  def calculate_line_with_highest_frequency

    # set class attribute highest_count_across_lines to 0 for comparison
    @highest_count_across_lines = 0    

    # set class attribute highest_count_words_across_lines to empty array for storing LineAnalyzer objects
    @highest_count_words_across_lines = Array.new

    #visit each LineAnalyzer object to find highest frequency
    @analyzers.each do | single_LA_Obj |

      frequency_of_singleLA = single_LA_Obj.highest_wf_count

      if (frequency_of_singleLA >= @highest_count_across_lines )

        # update highest frequency
        @highest_count_across_lines = frequency_of_singleLA

      end

    end

    #collect those single_LA_objs which has highest frequency
    @analyzers.each do | single_LA_Obj |

      if single_LA_Obj.highest_wf_count == @highest_count_across_lines
        # collect the LA obj, with highest frequency word, into highest_count_words_across_lines (an array of LineAanlyzers)
        @highest_count_words_across_lines << single_LA_Obj
      end

    end


  end


  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
  
  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format

  def print_highest_word_frequency_across_lines()

    puts "The following words have the highest word frequency per line:"

    # Visit each LA obj's, and print those words with highest word frequency
    @highest_count_words_across_lines.each do | single_LA_obj |
      puts single_LA_obj.highest_wf_words.to_s + " " + "(appears in line #{single_LA_obj.line_number})"
    end

  end

  # The following words have the highest word frequency per line:
  # ["word1"] (appears in line #)
  # ["word2", "word3"] (appears in line #)

end
#end of definition of class Solution