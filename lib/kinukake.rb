require 'active_support/dependencies'
require "kinukake/version"
require "open3"

module Kinukake

def run (command, *params)
    
    # コマンドはアプリケーションディレクトリのSHELL配下の前提
    command = 'SHELL/' + command
    
    # コマンドの編集
    params.each do | param |
      command = command + ' ' + param.to_s    
    end 
    
    res = nil
    
    # コマンドの実行
    Open3.popen3(command) {|i, o, e, t|
      i.close
      
      # エラー出力に何か出力されていたら例外を生成する
      error_message = e.read
      if error_message.length > 0 
        raise error_message
      end
      res = o.read
      }
    
    return res
  end
  
end