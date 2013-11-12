#1. Arrays
array = ["Blake", "Ashley", "Jeff"]
array.push "Frank"
array
array[1]
array.index("Jeff")

#2. Hashes
instructor = {:name=>"Ashley", :age=>27,}
instructor[:location] = "NYC"
instructor
instructor[:name]
instructor.keys[1]

#3. Nested Structures
school = {
	:name => "Happy Funtime school",
	:location => "NYC",
	:founded_in => 2013,
	:instructors => [
		{:name=>"Blake", :subject=>"being awesome"},
	    {:name=>"Ashley", :subject=>"being better than Blake"},
	    {:name=>"Jeff", :subject=>"karoke"}
	    ],
	     :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=> "Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}
school[:founded_in] = 2013

school[:students].push( {:name=> "Alicia", :grade => "A"})

school[:students].delete({:name => "Billy", :grade => "F"})

school[:students].each{|student| student[:semester] = "Summer"} 

new_sub = "being better than Blake"
if school[:instructors][1][:subject] != new_sub
    puts new_sub
end
school[:instructors]

grade = "A"
if school[:students][1][:grade] != "F"
    puts grade
end
school[:students]


school [:students][0][:name]
school [:instructors][2][:subject]

#4. Methods

#a.
def return_grade(name, school)
    school[:students].each do |student|
    if name == student[:name]
        puts student[:grade]
    end
  end
end
return_grade("Marissa", school)

#b.
def update(name,new_sub, school)
    school[:instructors].each do |instructor|
        if name == instructor[:name]
            instructor[:subject].replace new_sub
        end
    end
end
update("Blake", "being terrible", school)

#c.
def new_student(name, grade, school)
    school[:students].push ({:name => name, :grade => grade})
end
new_student("Keturah","A",school)

#d.
def new(key, value, school)
    school[key]=value
end
new("Ranking", 1, school)


#5. Object Orientation
class School
	@@reset = SCHOOLS.clear
	
	attr_accessor :name, :location, :instructors, :students
	attr_reader :ranking
	
	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = students
		@instructors = instructors
	end

	def rank(ranking)
		@rank = ranking
	end

	def add_student(name, grade, semester)
        @semester = semester
	end

	def remove_student(name)
		name.delete(name)
	end

	def self.reset
		@@reset
	end

	SCHOOLS = []
	SCHOOLS << self

end

#6. Classes

#a.
class Student
	attr_accessor :name, :grade, :semester
	def initialize (name, grade, semester)
		@name = name
		@grade = grade
		@semester = semester
	end

end

#b. Not sure
#c. Not sure

#7. Self

#a.  It will print "hello" and Student
#b.  It will print Student
#c.  Not sure
#d.  It will print "nil"
#e.  Not sure

