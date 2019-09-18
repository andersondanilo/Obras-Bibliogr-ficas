require 'test_helper'

class NameServiceTest < ActiveSupport::TestCase
  def setup
    @service = NameService.new
  end

  test "single name" do
    assert_equal('GUIMARAES', @service.convert_to_author_name('Guimaraes'))
  end

  test "two names" do
    assert_equal('COELHO, Paulo', @service.convert_to_author_name('Paulo Coelho'))
    assert_equal('ARAUJO, Celso de', @service.convert_to_author_name('Celso de Araujo'))
  end

  test "three names" do
    assert_equal('SOUZA, Anderson Danilo de', @service.convert_to_author_name('AnDeRsOn Danilo de SoUzA'))
  end

  test "ignored last name" do
    assert_equal('SILVA NETO, Joao', @service.convert_to_author_name('Joao Silva Neto'))
    assert_equal('NETO, Joao', @service.convert_to_author_name('Joao Neto'))
  end

  test "nil" do
    assert_equal('', @service.convert_to_author_name(nil))
  end
end
