require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestBankAccount < MiniTest::Test

  def setup
    @codeclan_student = Student.new("Frodo", "E28")
  end

  def test_get_name
    assert_equal("Frodo", @codeclan_student.get_name())
  end

  def test_get_cohort
    assert_equal("E28", @codeclan_student.get_cohort())
  end

  def test_set_name
    @codeclan_student.set_name("Sam")
    assert_equal("Sam", @codeclan_student.get_name())
  end

  def test_set_cohort
    @codeclan_student.set_cohort("E29")
    assert_equal("E29", @codeclan_student.get_cohort())
  end

  def test_get_student_talk
    @codeclan_student.get_student_talk()
    assert_equal("I can talk!", @codeclan_student.get_student_talk())
  end

  def test_get_favourite_language
    assert_equal("I love Ruby", @codeclan_student.get_favourite_language("Ruby"))

  end



end
