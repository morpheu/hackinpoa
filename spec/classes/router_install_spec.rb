require 'spec_helper'

describe 'tsuruio::router::install' do

  context "on a Ubuntu OS" do
    let :facts do
      {
        :osfamily                  => 'Debian',
        :operatingsystem           => 'Ubuntu',
        :lsbdistid                 => 'Ubuntu',
        :lsbdistcodename           => 'trusty',
        :hostname                  => 'foo.bar',
        :kernel                    => 'Linux'
      }
    end

    it { should contain_class('router') }

  end

end
