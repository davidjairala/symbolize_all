require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe SymbolizeAll do

  describe Hash do
    describe '#symbolize_all' do
      [
        [{'friend' => 'mary','enemy' => 'peter'},               {:friend => :mary, :enemy => :peter}],
        [{'friend' => 'mary','number' => 1, 5 => 10},           {:friend => :mary, :number => 1, 5 => 10}],
        [{'friend' => 'normal', 'nested' => {"one" => "two"}},  {:friend => :normal, :nested => {:one => :two}}],
        [{'friend' => 'normal', 'array' => ["one", "two"]},     {:friend => :normal, :array => [:one, :two]}],
        [{'string' => nil},                                     {:string => nil}],
        [{},                                                    {}]
      ].each do |input, expected|

        it "for `#{input}` expects `#{expected}`" do
          input.symbolize_all.should eql expected
        end

      end
    end
  end

  describe Array do
    describe '#symbolize_all' do
      [
        [['mary', 'peter'],                   [:mary, :peter]],
        [['string', 10],                      [:string, 10]],
        [['something', {'test' => 'hashes'}], [:something, {:test => :hashes}]],
        [['friend', ['nested', 'sure']],      [:friend, [:nested, :sure]]],
        [['string', nil],                     [:string, nil]],
        [[],                                  []]
      ].each do |input, expected|

        it "for `#{input}` expects `#{expected}`" do
          input.symbolize_all.should eql expected
        end

      end
    end
  end

end