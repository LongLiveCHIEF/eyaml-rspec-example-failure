require 'spec_helper'

describe 'my_profile' do
  on_supported_os(facterversion: '2.4').each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params) do
        {
          'file_content' => 'test'
        }
      end
      it { is_expected.to compile }
      it { is_expected.to contain_file('/var/lib/sector.config') }
      context 'when in alpha sector' do
        let(:facts) do
          super().merge({'sector' => 'alpha'})
        end

          it { is_expected.to compile }
      end
    end
  end
end
