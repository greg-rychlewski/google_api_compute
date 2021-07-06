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

defmodule GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange do
  @moduledoc """
  Secondary IP range of a usable subnetwork.

  ## Attributes

  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The range of IP addresses belonging to this subnetwork secondary range.
  *   `rangeName` (*type:* `String.t`, *default:* `nil`) - The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipCidrRange => String.t() | nil,
          :rangeName => String.t() | nil
        }

  field(:ipCidrRange)
  field(:rangeName)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end