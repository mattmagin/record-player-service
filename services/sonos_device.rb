require_relative '../models/tag'
require 'pycall'
require 'pycall/import'

include PyCall::Import

pyimport :soco
sonosControlModule = PyCall.import_module("soco")
ShareLinkPlugin = PyCall.import_module('soco.plugins.sharelink').ShareLinkPlugin
DiscoveryPlugin = PyCall.import_module('soco.discovery')


class SonosDevice
    def initialize(device_name)
        @device = DiscoveryPlugin.by_name(device_name)
        @share_link = ShareLinkPlugin.new(@device)

        @device
    end

    def clear_queue
        @device.clear_queue();
    end

    def play()
        @device.play();
    end
 
    def queue_request(request)
        @device.clear_queue()
        @share_link.add_share_link_to_queue(request.share_link)
    end        
end