# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.NodeGroup do
  @moduledoc """
  Represent a sole-tenant Node Group resource.

  A sole-tenant node is a physical server that is dedicated to hosting VM instances only for your specific project. Use sole-tenant nodes to keep your instances physically separated from instances in other projects, or to group your instances together on the same host hardware. For more information, read Sole-tenant nodes. (== resource_for {$api_version}.nodeGroups ==)

  ## Attributes

  *   `autoscalingPolicy` (*type:* `GoogleApi.Compute.V1.Model.NodeGroupAutoscalingPolicy.t`, *default:* `nil`) - Specifies how autoscaling should behave.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#nodeGroup`) - [Output Only] The type of the resource. Always compute#nodeGroup for node group.
  *   `locationHint` (*type:* `String.t`, *default:* `nil`) - An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  *   `maintenancePolicy` (*type:* `String.t`, *default:* `nil`) - Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see  Maintenance policies.
  *   `maintenanceWindow` (*type:* `GoogleApi.Compute.V1.Model.NodeGroupMaintenanceWindow.t`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `nodeTemplate` (*type:* `String.t`, *default:* `nil`) - URL of the node template to create the node group from.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `size` (*type:* `integer()`, *default:* `nil`) - [Output Only] The total number of nodes in the node group.
  *   `status` (*type:* `String.t`, *default:* `nil`) - 
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the zone where the node group resides, such as us-central1-a.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingPolicy => GoogleApi.Compute.V1.Model.NodeGroupAutoscalingPolicy.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :locationHint => String.t() | nil,
          :maintenancePolicy => String.t() | nil,
          :maintenanceWindow => GoogleApi.Compute.V1.Model.NodeGroupMaintenanceWindow.t() | nil,
          :name => String.t() | nil,
          :nodeTemplate => String.t() | nil,
          :selfLink => String.t() | nil,
          :size => integer() | nil,
          :status => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:autoscalingPolicy, as: GoogleApi.Compute.V1.Model.NodeGroupAutoscalingPolicy)
  field(:creationTimestamp)
  field(:description)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:locationHint)
  field(:maintenancePolicy)
  field(:maintenanceWindow, as: GoogleApi.Compute.V1.Model.NodeGroupMaintenanceWindow)
  field(:name)
  field(:nodeTemplate)
  field(:selfLink)
  field(:size)
  field(:status)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeGroup do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
