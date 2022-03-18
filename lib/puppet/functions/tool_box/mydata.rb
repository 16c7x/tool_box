Puppet::Functions.create_function(:'tool_box::mydata') do 
    require 'open3'
  
    dispatch :lookup do
      param 'String', :user
    end
    
    def lookup(user)
        
      cmd = "grep #{user} /etc/passwd | head -1"   
  
      stdout,stderr,status = Open3.capture3(cmd)
      STDERR.puts stderr
      if status.success?
        data = stdout
      else
        STDERR.puts "OH NO!"
      end
  
        Puppet::Pops::Types::PSensitiveType::Sensitive.new(data)
    end
  end  