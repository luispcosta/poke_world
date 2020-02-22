require_relative './poke_world'

RSpec.describe PokeWorld do
  describe '.catch_pokemons' do
    subject { PokeWorld.catch_pokemons(movements) }

    let(:movements) { [] }

    context 'empty movements' do
      let(:movements) { [] }
      it { is_expected.to eq 1 }
    end

    context 'nil movements' do
      let(:movements) { nil }
      it { is_expected.to eq 1 }
    end

    context 'unknown movements' do
      let(:movements) { [1, '', nil, 'xpto'] }
      it { is_expected.to eq 1 }
    end

    context 'regular paths' do
      it "should catch the right number of pokemons" do
        expect(PokeWorld.catch_pokemons(['E'])).to eq 2
        expect(PokeWorld.catch_pokemons(['n', 'E', 's', 'O'])).to eq 4
        expect(PokeWorld.catch_pokemons(['N','S','N','S','N','S','N','S','N','S'])).to eq 2
        expect(PokeWorld.catch_pokemons(['e', 'E'])).to eq 3
        expect(PokeWorld.catch_pokemons(['n', 'E', 's', 'O', nil, 1, 'x'])).to eq 4
        expect(PokeWorld.catch_pokemons(["\n", "\t", "\w", "\\", "'", "\n\n\n\t"])).to eq 1
      end
    end
  end
end
