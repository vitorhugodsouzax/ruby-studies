class  Student
    @first_name
    @last_name
    @email
    @username
    @password

end

def to_s 
"First name: #{first_name}"
end

vitor = Student.new
puts vitor
vitor.first_name = "Vitor"
puts vitor