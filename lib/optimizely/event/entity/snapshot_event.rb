# frozen_string_literal: true

#
#    Copyright 2019, Optimizely and contributors
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#
module Optimizely
  class SnapshotEvent
    attr_reader :entity_id, :uuid, :key, :timestamp, :revenue, :value, :tags

    def initialize(opts = {})
      @entity_id = opts[:entity_id]
      @uuid = opts[:uuid]
      @key = opts[:key]
      @timestamp = opts[:timestamp]
      @revenue = opts[:revenue]
      @value = opts[:value]
      @tags = opts[:tags]
    end

    def as_json
      hash = {entity_id: @entity_id, uuid: @uuid, key: @key, timestamp: @timestamp}
      hash[:revenue] = @revenue unless @revenue.nil?
      hash[:value] = @value unless @value.nil?
      hash[:tags] = @tags unless @tags.nil?
      hash
    end
  end
end
