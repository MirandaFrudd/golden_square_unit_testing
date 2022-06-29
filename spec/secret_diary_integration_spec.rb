require 'secret_diary'
require 'diary'

RSpec.describe SecretDiary do
    context 'when the diary is unlocked' do
        it 'reads the contents of the diary' do
            diary = Diary.new("Some contents")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "Some contents"
        end
    end

    context 'when the diary is locked' do
        it 'fails' do
            diary = Diary.new("Some contents")
            secret_diary = SecretDiary.new(diary)
            expect{secret_diary.read}.to raise_error "Go away!"
        end
    end
end