require "test/unit"
require_relative "../app/controller/mesas"

class TestMesa < Test::Unit::TestCase
    def test_get_all_tables
        assert_operator(getAllTables.length, :>, 0, "Should return all tables")
    end
end