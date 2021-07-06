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

defmodule GoogleApi.Compute.V1.Model.InterconnectLocationRegionInfo do
  @moduledoc """
  Information about any potential InterconnectAttachments between an Interconnect at a specific InterconnectLocation, and a specific Cloud Region.

  ## Attributes

  *   `expectedRttMs` (*type:* `String.t`, *default:* `nil`) - Expected round-trip time in milliseconds, from this InterconnectLocation to a VM in this region.
  *   `locationPresence` (*type:* `String.t`, *default:* `nil`) - Identifies the network presence of this location.
  *   `region` (*type:* `String.t`, *default:* `nil`) - URL for the region of this location.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expectedRttMs => String.t() | nil,
          :locationPresence => String.t() | nil,
          :region => String.t() | nil
        }

  field(:expectedRttMs)
  field(:locationPresence)
  field(:region)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectLocationRegionInfo do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectLocationRegionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectLocationRegionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end