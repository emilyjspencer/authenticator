users = [
          {username: "emily", password: "password1" },
          { username: "millie", password: "password2" },
          {username: "bob", password: "password3" },
          {username: "bart", password: "password4" },
          {username: "donald", password: "password5" }
        ]
        
        puts "Welcome to the authenticator"
        25.times { print "-" }
        puts
        puts "This program will take input from the user and compare the password"
        puts "If the program is correct, the user object will be returned to you"
        
        attempts = 1
        
        while attempts < 4
          print "Username: "
          username = gets.chomp
          print "Password: "
          password = gets.chomp
          users.each { |user|
            if user[:username] == username && user[:password] == password
                puts user
                break
            else
                puts "Credentials were not correct"
            end 
          }
          puts "Press n to quit or any other key to continue: "
          input = gets.chomp.downcase
          break if input == "n"
          attempts += 1 
        end 
          
          