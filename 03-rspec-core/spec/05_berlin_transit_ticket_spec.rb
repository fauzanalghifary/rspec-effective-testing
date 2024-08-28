class BerlinTransitTicket
  attr_accessor :starting_station, :ending_station

  def fare
    if starting_station == 'Bundestag' && ending_station == 'Leopoldplatz'
      2.7
    elsif starting_station == 'Bundestag' && ending_station == 'Birkenwerder'
      3.3
    else
      raise 'price has not been defined'
    end
  end
end



# We disable line length because the labels cause lines to be too long
# but they do not render in the book so it causes no problems.
RSpec.describe BerlinTransitTicket do
  let(:ticket) { BerlinTransitTicket.new }

  before do
    # These values depend on `let` definitions
    # defined in the nested contexts below!
    #
    ticket.starting_station = starting_station
    ticket.ending_station   = ending_station
  end

  let(:fare) { ticket.fare }

  context 'when starting in zone A' do
    let(:starting_station) { 'Bundestag' }

    context 'and ending in zone B' do
      let(:ending_station) { 'Leopoldplatz' }

      it 'costs €2.70' do
        expect(fare).to eq 2.7
      end
    end

    context 'and ending in zone C' do
      let(:ending_station) { 'Birkenwerder' }

      it 'costs €3.30' do
        expect(fare).to eq 3.3
      end
    end
  end
end
