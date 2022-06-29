require 'diary'

RSpec.describe Diary do
    context "when #read" do
        it "return the contents of the diary" do
            diary = Diary.new("Some contents")
            expect(diary.read).to eq "Some contents"
        end
    end
end