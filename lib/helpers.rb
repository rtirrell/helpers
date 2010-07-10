require "helpers/array"
require "helpers/string"

module Helpers
  VERSION = "0.0.2"
  def self.get_csv_tuple(value)
    "(" + value.join(", ") + ")"
  end
end
