#Why do we test methods?
#1. returns a value



describe Giftcard do
  describe '#masked_card_number' do
    it 'masks number correctly' do
      giftcard = Giftcard.new
      giftcard.card_number = '1234'
      expect(giftcard_masked_card_number).to eq('xxx')

#2. causes a side effect - update

describe Giftcard do
  describe '#cancel' do
    it 'updates cancelled' do
      giftcard = Giftcard.new
      expect(giftcard.cancelled_at).to eq(nil)
      giftcard.cancel
      expect(giftcard.cancelled_at).to be_a(time)
    end
  end
end

#3. Passes to another
#Q: How does testing other methods work???
describe Giftcards::Repository do
  describe '#balance' do
    let(:adapter)    { Giftcards::Adapters::Test.new }
    let(:repository) { Giftcards::Repository.new(adapter) }
    let(:giftcard)   { instance_double('Giftcard', card_number: 12345) }

    it 'returns balance for giftcard' do
      expect(repository.balance(giftcard)).to eq(100)
    end

    it 'calls the balance of adapter' do
      expect(repository.adapter).to receive(:balance).with(giftcard.card_number)
      repository.balance(giftcard)
    end
  end
end
