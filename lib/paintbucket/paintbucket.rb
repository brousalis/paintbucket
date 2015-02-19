#encoding: utf-8

module Colors
  def colorize(text, color_code)
    "\033[#{color_code}m#{text}\033[0m"
  end

  { :black    => 30,
    :red      => 31,
    :green    => 32,
    :yellow   => 33,
    :blue     => 34,
    :magenta  => 35,
    :cyan     => 36,
    :white    => 37
  }.each do |key, color_code|
    define_method key do |text|
      colorize(text, color_code)
    end
  end

  def hint(msg)
    puts black("   #{msg}")
  end

  def warn(msg)
    puts yellow("⚑  " + msg)
  end

  def error(msg)
    puts "\n#{colorize("✗  #{msg}", 31)}"
  end

  def success(msg)
    puts "\n#{colorize("✓  #{msg}", 32)}"
  end

  def divider
    puts "\n#{cyan("=================================")}"
  end

  def message(msg)
    puts "\n#{cyan(msg)}\n\n"
  end
end
