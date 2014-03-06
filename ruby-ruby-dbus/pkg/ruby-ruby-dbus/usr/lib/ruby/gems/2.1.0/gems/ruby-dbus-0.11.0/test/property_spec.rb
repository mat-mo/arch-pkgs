#!/usr/bin/env rspec
require_relative "spec_helper"
require "dbus"

describe "PropertyTest" do
  before(:each) do
    session_bus = DBus::ASessionBus.new
    svc = session_bus.service("org.ruby.service")
    @obj = svc.object("/org/ruby/MyInstance")
    @obj.introspect
    @iface = @obj["org.ruby.SampleInterface"]
  end

  it "tests property reading" do
    expect(@iface["ReadMe"]).to eq("READ ME")
  end

  it "tests property nonreading" do
    expect { @iface["WriteMe"] }.to raise_error(DBus::Error, /not readable/)
  end

  it "tests property writing" do
    @iface["ReadOrWriteMe"] = "VALUE"
    expect(@iface["ReadOrWriteMe"]).to eq("VALUE")
  end

  # https://github.com/mvidner/ruby-dbus/pull/19
  it "tests service select timeout" do
    @iface["ReadOrWriteMe"] = "VALUE"
    expect(@iface["ReadOrWriteMe"]).to eq("VALUE")
    # wait for the service to become idle
    sleep 6
    # fail:  "Property value changed; perhaps the service died and got restarted"
    expect(@iface["ReadOrWriteMe"]).to eq("VALUE")
  end

  it "tests property nonwriting" do
    expect { @iface["ReadMe"] = "WROTE" }.to raise_error(DBus::Error, /not writable/)
  end

  it "tests get all" do
    all = @iface.all_properties
    expect(all.keys.sort).to eq(["ReadMe", "ReadOrWriteMe"])
  end

  it "tests unknown property reading" do
    expect { @iface["Spoon"] }.to raise_error(DBus::Error, /not found/)
  end

  it "tests unknown property writing" do
    expect { @iface["Spoon"] = "FPRK" }.to raise_error(DBus::Error, /not found/)
  end
end
