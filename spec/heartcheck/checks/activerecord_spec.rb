describe Heartcheck::Checks::Activerecord do
  let(:conn) { ActiveRecord::Base.connection }
  let(:service) { { name: 'Default', connection: conn } }
  let(:check_errors) { subject.instance_variable_get(:@errors) }

  subject do
    described_class.new.tap { |c| c.add_service(service) }
  end

  describe '#validate' do
    context 'with success' do
      before do
        conn_settings = {
          adapter: 'sqlite3',
          database: ':memory:'
        }

        ActiveRecord::Base.establish_connection(conn_settings)
      end

      after do
        ActiveRecord::Base.connection.disconnect!
      end

      it "doesn't append error" do
        expect(conn).to receive(:execute).and_call_original
        subject.validate
        expect(check_errors).to be_empty
      end
    end

    context 'with error' do
      it 'appends default error message' do
        subject.validate
        expect(check_errors).to eq(['Error to use the "Default" connection'])
      end

      it 'appends custom error message' do
        subject.on_error do |errors, service|
          errors << "Activerecord #{service[:name]} is not connected"
        end
        subject.validate
        expect(check_errors).to eq(['Activerecord Default is not connected'])
      end
    end
  end
end
