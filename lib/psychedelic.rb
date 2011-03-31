require 'singleton'

module Psychedelic
  class State
    include Singleton
    def initialize
      @state = :normal
    end
    def process(c)
      case @state
      when :normal
        if c=="\e"
          @state = :ansi
          return false
        end
        return true
      when :ansi
        @state = :normal if c=='m'
        return false
      end
    end
  end
  def self.colorize(output)
    class << output
      alias :raw_write :write
      def write(s)
        state = Psychedelic::State.instance
        s.to_s.chars.each do |c|
          raw_write "\e[1;#{31+rand(7)}m#{c}\e[m" if state.process(c)
        end
      end
    end
  end
end


Psychedelic.colorize($stdout)
Psychedelic.colorize($stderr)
