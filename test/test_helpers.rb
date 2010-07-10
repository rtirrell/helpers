require "test/unit"
require "helpers"

class TestHelpers < Test::Unit::TestCase
  def test_true_strings_to_b
    assert "true".to_b
    assert "TRUE".to_b
    assert "True".to_b
  end

  def test_false_strings_to_b
    %w{false False FALSE}.each do |string|
      assert !string.to_b
      assert !string.to_b
      assert !string.to_b
    end
  end

  def test_1_string_to_b
    assert "1".to_b
  end

  def test_0_string_to_b
    assert !"0".to_b
  end

  def test_other_strings_false
    %W{blah blo SOENTHUO mest erg GRoM #{RUBY_PLATFORM}}.each do |string|
      assert !string.to_b
    end
  end

  def test_array_sum
    assert [].sum          == 0
    assert [4, 3].sum      == 7
    assert [-1, 1].sum     == 0
    assert [0].sum         == 0
    assert [1, -1, 0].sum  == 0
    assert [-0.1, 0.1].sum == 0
    assert [0.9, 0.1].sum  == 1
  end

  def test_array_mean_nan
    assert [].mean.nan?
  end
  
  def test_array_mean
    assert [0].mean == 0
    assert [1, 2].mean == 1.5
  end
end
