#!/usr/bin/env rspec
# Test thread safety
require_relative "spec_helper"
require "dbus"

describe "ThreadSafetyTest" do
  it "tests thread competition" do
    print "Thread competition: "
    jobs = []
    5.times do
      jobs << Thread.new do
        Thread.current.abort_on_exception = true

        # use separate connections to avoid races
        bus = DBus::ASessionBus.new
        svc = bus.service("org.ruby.service")
        obj = svc.object("/org/ruby/MyInstance")
        obj.introspect
        obj.default_iface = "org.ruby.SampleInterface"

        10.times do |i|
          print "#{i} "
          $stdout.flush
          expect(obj.the_answer[0]).to eq(42)
          sleep 0.1 * rand
        end
      end
    end
    jobs.each do |thread| thread.join end
  end
end
