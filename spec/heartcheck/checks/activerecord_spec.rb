describe Heartcheck::Checks::Activerecord do
  let(:conn)    { ActiveRecord::Base.connection }
  let(:service) { { name: 'Default', connection: conn } }

  subject do
    described_class.new.tap { |c| c.add_service(service) }
  end

  describe '#validate' do
    context 'with success' do
      before do
        ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'spec/db/test.sqlite3')
      end

      after do
        ActiveRecord::Base.connection.disconnect!
      end

      it "doesn't append error" do
        expect(conn).to receive(:execute).and_call_original
        subject.validate
        expect(subject.instance_variable_get(:@errors)).to be_empty
      end
    end

    context 'with error' do
      it 'appends error' do
        subject.validate
        expect(subject.instance_variable_get(:@errors)).to eq(['Error to use the "Default" connection'])
      end
    end
  end
end
