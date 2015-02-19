#encoding: utf-8

COLORS = {
  black:          0,
  red:            1,
  green:          2,
  yellow:         3,
  blue:           4,
  magenta:        5,
  cyan:           6,
  white:          7,
  default:        9,
  light_black:    60,
  light_red:      61,
  light_green:    62,
  light_yellow:   63,
  light_blue:     64,
  light_magenta:  65,
  light_cyan:     66,
  light_white:    67
}

module Paintbucket
  def paint(text, color_code)
    "\033[#{color_code}m#{text}\033[0m"
  end

  COLORS.each do |key, color_code|
    define_method "paint_#{key}" do |text|
      paint(text, color_code)
    end
  end

  def paint_hint(msg)
    puts paint_black("   #{msg}")
  end

  def paint_warn(msg)
    puts paint_yellow(" ⚑  " + msg)
  end

  def paint_error(msg)
    puts "\n#{paint(" ✗  #{msg}", 31)}"
  end

  def paint_success(msg)
    puts "\n#{paint(" ✓  #{msg}", 32)}"
  end

  def paint_divider(char, times)
    puts "\n#{paint_cyan(char * times)}"
  end

  def paint_header(msg)
    puts "\n#{paint_cyan(msg)}\n\n"
  end
end
