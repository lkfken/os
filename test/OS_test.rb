require 'minitest/autorun'
require_relative '../lib/os'

describe OS, :host do
  before do
    @os = ::OS
  end

  describe 'when the host is a Windows system' do
    it 'should return the os name' do
      [:windows,:macosx,:linux,:unix].include?(@os.host).must_equal true
    end
    it 'should return the predefined end-of-line' do
      @os.end_of_line.must_equal "\n"
    end
  end
end