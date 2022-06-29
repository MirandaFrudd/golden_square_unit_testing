require 'cat_facts'

RSpec.describe CatFacts do
    it "returns a formatted random cat fact" do
        request = double :request
        expect(request).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"An adult lion\'s roar can be heard up to five miles (eight kilometers) away.","length":75}')
        cat_facts = CatFacts.new(request)
        expect(cat_facts.provide).to eq "Cat fact: An adult lion's roar can be heard up to five miles (eight kilometers) away." 
    end
end