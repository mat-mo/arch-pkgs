#!/usr/bin/env rspec
# Test the signal handlers
require_relative "spec_helper"
require "dbus"

describe "SignalHandlerTest" do
  before(:each) do
    @session_bus = DBus::ASessionBus.new
    svc = @session_bus.service("org.ruby.service")
    @obj = svc.object("/org/ruby/MyInstance")
    @obj.introspect                  # necessary
    @obj.default_iface = "org.ruby.Loop"
    @intf = @obj["org.ruby.Loop"]

    @loop = DBus::Main.new
    @loop << @session_bus
  end

  # testing for commit 017c83 (kkaempf)
  it "tests overriding a handler" do
    DBus.logger.debug "Inside test_overriding_a_handler"
    counter = 0

    @obj.on_signal "LongTaskEnd" do
      DBus.logger.debug "+10"
      counter += 10
    end
    @obj.on_signal "LongTaskEnd" do
      DBus.logger.debug "+1"
      counter += 1
    end

    DBus.logger.debug "will begin"
    @obj.LongTaskBegin 3

    quitter = Thread.new do
      DBus.logger.debug "sleep before quit"
      # FIXME if we sleep for too long
      # the socket will be drained and we deadlock in a select.
      # It could be worked around by sending ourselves a Unix signal
      # (with a dummy handler) to interrupt the select
      sleep 1
      DBus.logger.debug "will quit"
      @loop.quit
    end
    @loop.run
    quitter.join

    expect(counter).to eq(1)
  end

  it "tests on signal overload" do
    DBus.logger.debug "Inside test_on_signal_overload"
    counter = 0
    started = false
    @intf.on_signal "LongTaskStart" do
      started = true
    end
    # Same as intf.on_signal("LongTaskEnd"), just the old way
    @intf.on_signal @obj.bus, "LongTaskEnd" do
      counter += 1
    end
    @obj.LongTaskBegin 3
    quitter = Thread.new do
      DBus.logger.debug "sleep before quit"
      sleep 1
      DBus.logger.debug "will quit"
      @loop.quit
    end
    @loop.run
    quitter.join

    expect(started).to eq(true)
    expect(counter).to eq(1)
    expect { @intf.on_signal }.to raise_error(ArgumentError) # not enough
    expect { @intf.on_signal 'to', 'many', 'yarrrrr!' }.to raise_error(ArgumentError)
  end

  it "tests too many rules" do
    100.times do
      @obj.on_signal "Whichever" do
        puts "not called"
      end
    end
  end

  it "tests removing a nonexistent rule" do
    @obj.on_signal "DoesNotExist"
  end
end
