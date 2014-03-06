#!/usr/bin/env rspec
# Test the bus class
require_relative "spec_helper"

require "dbus"

describe "BusTest" do
  before(:each) do
    @bus = DBus::ASessionBus.new
    @svc = @bus.service("org.ruby.service")
    @svc.object("/").introspect
  end

  it "tests introspection not leaking" do
    # peek inside the object to see if a cleanup step worked or not
    some_hash = @bus.instance_eval { @method_call_replies || Hash.new }
    # fail: "there are leftover method handlers"
    expect(some_hash.size).to eq(0)
  end
end
