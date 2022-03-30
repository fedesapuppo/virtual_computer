class Computer
@@users = {}
  def initialize(username, password, email)
    @@users[username] = password
    @username = username
    @password = password
    @email = email
    @files = {}
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}"
  end
  def modify(filename, new_file_name)
    time = Time.now
    @files.delete(filename)
    @files[new_file_name] = time
    puts "#{filename} was replaced with #{new_file_name} by #{@username} at #{time}"
  end
  def delete(filename)
    time = Time.now
    @files.delete(filename)
    puts "#{filename} was deleted by #{@username} at #{time}"
  end
  def Computer.get_users
    @@users
  end
end
my_computer = Computer.new("Fede", "eemC", "fedesapuppo@hotmail.com")
my_computer.create("hello_world")
my_computer.modify("hello_world", "Hello, world!!")
my_computer.delete("Hello, world!!")
my_computer.create("Hello, universe!!")
p my_computer
