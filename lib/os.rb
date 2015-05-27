require "os/version"
require 'rbconfig'

class OS
  class UnknownError < StandardError

  end

  # http://stackoverflow.com/questions/11784109/detecting-operating-systems-in-ruby/20579735#20579735
  def self.host
    @host ||= begin
      host_os = RbConfig::CONFIG['host_os']
      case host_os
      when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
        :windows
      when /darwin|mac os/
        :macosx
      when /linux/
        :linux
      when /solaris|bsd/
        :unix
      else
        raise OS::UnknownError, "unknown os: #{host_os.inspect}"
      end
    end
  end

end
