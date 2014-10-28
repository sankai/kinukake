require 'active_support/dependencies'
require "kinukake/version"
require "open3"

module Kinukake
    def run (command, *params)
    
    params.each do | param |
      command = command + ' ' + param.to_s    
    end 
    

    Open3.popen3(command) {|i, o, e, t|
        i.close
        self.set_result(o.read)
    }
  end

end
