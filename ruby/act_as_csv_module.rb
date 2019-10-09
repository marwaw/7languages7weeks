module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods   
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
      	row_data = row.chomp.split(', ')
      	new_row = CsvRow.new(@headers.zip(row_data).to_h)
        @csv_contents << new_row
      end
    end

    def each(&block)
    	@csv_contents.each &block
    end

    attr_accessor :headers, :csv_contents
    def initialize
    	read
    end 
  end
end

class CsvRow
	attr_accessor :values

	def initialize(values)
		@values = values
	end

	def method_missing name, *args
		column = name.to_s
		@values[column]
	end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end


csv = RubyCsv.new
csv.each {|row| puts row.one}