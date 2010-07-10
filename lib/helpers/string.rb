class String
  def to_b
    case downcase
    when "true"  then true
    when "false" then false
    when "1"     then true
    when "0"     then false
    else false
    end
  end
end
