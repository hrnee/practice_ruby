module Decorator
  class ColorRed
    COLOR = "\e[31m"  #標準出力の文字を赤にする
    CLEAR = "\e[m"  #標準出力を元に戻す

    def initialize(actor)
      @actor = actor
    end
    def show_message
      COLOR + @actor.show_message + CLEAR
    end
    def show_message_length
      @actor.show_message.length
    end
  end
end