require 'spec_helper'

describe 'my_profile' do
  on_supported_os(facterversion: '2.4').each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      context 'when in alpha sector' do
        let(:facts) do
          super().merge({'sector' => 'alpha'})

          it { is_expected.to compile }
        end
      end
    end
  end
end
