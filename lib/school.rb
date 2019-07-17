# code here!
require 'pry'
class School

    def initialize(name, roster = {})
        @name=name
        @roster=roster
    end
    def roster
        @roster
    end
    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        self.roster.each do |key, value|
            hash[key] = value.sort
        end
        hash
    end

end