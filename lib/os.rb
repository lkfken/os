require "os/version"
require 'rbconfig'
require 'singleton'

class OS
  class UnknownError < StandardError
  end
  # http://stackoverflow.com/questions/11784109/detecting-operating-systems-in-ruby/20579735#20579735
  attr_writer :host_os

  def self.host_os
    RbConfig::CONFIG['host_os']
  end

  def self.host
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
