require 'spec_helper'

describe Versioner do

  let(:early) { 20130415 }
  let(:middle) { 20130501 }
  let(:late) { 20130519 }
  let(:versions) { [early, middle, late] }

  it 'returns a version within a list' do
    Versioner.find_version_for(20130503, versions).should == middle
  end

  it 'return the first if the version is before the first' do
    Versioner.find_version_for(20130101, versions).should == early
  end

  it 'returns the last if the version is beyond the last' do
    Versioner.find_version_for(20140101, versions).should == late
  end

  it 'returns the latest if not supplied' do
    Versioner.find_version_for(nil, versions).should == late
  end

end
