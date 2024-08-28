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

RSpec.describe BerlinTransitTicket do
  def fare_for(starting_station, ending_station)
    ticket = BerlinTransitTicket.new
    ticket.starting_station = starting_station
    ticket.ending_station   = ending_station
    ticket.fare
  end

  context 'when starting in zone A and ending in zone B' do
    it 'costs €2.70' do
      expect(fare_for('Bundestag', 'Leopoldplatz')).to eq 2.7
    end
  end

  context 'when starting in zone A and ending in zone C' do
    it 'costs €3.30' do
      expect(fare_for('Bundestag', 'Birkenwerder')).to eq 3.3
    end
  end
end
