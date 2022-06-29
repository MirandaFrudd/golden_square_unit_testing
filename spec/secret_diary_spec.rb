require 'secret_diary'

RSpec.describe "unit test SecretDiary" do
    context 'when the diary is unlocked' do
        it 'reads the contents of the diary' do
            fake_diary = double :fake_diary, read: "Some contents"
            secret_diary = SecretDiary.new(fake_diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "Some contents"
        end
    end

    context 'when the diary is locked' do
        it 'fails' do
            fake_diary = double :fake_diary, read: "Some contents"
            secret_diary = SecretDiary.new(fake_diary)
            expect{secret_diary.read}.to raise_error "Go away!"
        end
    end
end