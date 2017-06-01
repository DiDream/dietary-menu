require "spec_helper"

RSpec.describe DietaryMenu do
  it "has a version number" do
    expect(DietaryMenu::VERSION).not_to be nil
  end
end
RSpec.describe DLL do
    before :all do
        @dll = DLL.new(1,2,3,4,5)
    end
    it "Es una lista doblemente enlazada. Sus nodos tienen :next y :prev" do
        expect(@dll.head).to respond_to(:next, :prev)
    end
    it "Correcta inserción de valores" do
        arr =[1,2,3,4,5]
        i = arr.length-1
        @dll.each do |node|
            expect(node.value).to be(arr[i])
            i-=1
        end
    end
end
