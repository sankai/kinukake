require 'active_support/dependencies'
require "kinukake/version"
require "open3"

module Kinukake

def run (command, *params)
    
    # �R�}���h�̓A�v���P�[�V�����f�B���N�g����SHELL�z���̑O��
    command = 'SHELL/' + command
    
    # �R�}���h�̕ҏW
    params.each do | param |
      command = command + ' ' + param.to_s    
    end 
    
    res = nil
    
    # �R�}���h�̎��s
    Open3.popen3(command) {|i, o, e, t|
      i.close
      
      # �G���[�o�͂ɉ����o�͂���Ă������O�𐶐�����
      error_message = e.read
      if error_message.length > 0 
        raise error_message
      end
      res = o.read
      }
    
    return res
  end
  
end