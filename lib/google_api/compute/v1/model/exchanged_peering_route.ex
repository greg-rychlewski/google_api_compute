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

defmodule GoogleApi.Compute.V1.Model.ExchangedPeeringRoute do
  @moduledoc """


  ## Attributes

  *   `destRange` (*type:* `String.t`, *default:* `nil`) - The destination range of the route.
  *   `imported` (*type:* `boolean()`, *default:* `nil`) - True if the peering route has been imported from a peer. The actual import happens if the field networkPeering.importCustomRoutes is true for this network, and networkPeering.exportCustomRoutes is true for the peer network, and the import does not result in a route conflict.
  *   `nextHopRegion` (*type:* `String.t`, *default:* `nil`) - The region of peering route next hop, only applies to dynamic routes.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - The priority of the peering route.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the peering route.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destRange => String.t() | nil,
          :imported => boolean() | nil,
          :nextHopRegion => String.t() | nil,
          :priority => integer() | nil,
          :type => String.t() | nil
        }

  field(:destRange)
  field(:imported)
  field(:nextHopRegion)
  field(:priority)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ExchangedPeeringRoute do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ExchangedPeeringRoute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ExchangedPeeringRoute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end