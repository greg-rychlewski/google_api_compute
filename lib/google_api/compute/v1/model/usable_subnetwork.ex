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

defmodule GoogleApi.Compute.V1.Model.UsableSubnetwork do
  @moduledoc """
  Subnetwork which the current user has compute.subnetworks.use permission on.

  ## Attributes

  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The range of internal addresses that are owned by this subnetwork.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Network URL.
  *   `secondaryIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange.t)`, *default:* `nil`) - Secondary IP ranges.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - Subnetwork URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipCidrRange => String.t() | nil,
          :network => String.t() | nil,
          :secondaryIpRanges =>
            list(GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange.t()) | nil,
          :subnetwork => String.t() | nil
        }

  field(:ipCidrRange)
  field(:network)

  field(:secondaryIpRanges,
    as: GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange,
    type: :list
  )

  field(:subnetwork)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UsableSubnetwork do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UsableSubnetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UsableSubnetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
