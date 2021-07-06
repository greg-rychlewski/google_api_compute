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

defmodule GoogleApi.Compute.V1.Model.PacketMirroringFilter do
  @moduledoc """


  ## Attributes

  *   `IPProtocols` (*type:* `list(String.t)`, *default:* `nil`) - Protocols that apply as filter on mirrored traffic. If no protocols are specified, all traffic that matches the specified CIDR ranges is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  *   `cidrRanges` (*type:* `list(String.t)`, *default:* `nil`) - IP CIDR ranges that apply as filter on the source (ingress) or destination (egress) IP in the IP header. Only IPv4 is supported. If no ranges are specified, all traffic that matches the specified IPProtocols is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  *   `direction` (*type:* `String.t`, *default:* `nil`) - Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :IPProtocols => list(String.t()) | nil,
          :cidrRanges => list(String.t()) | nil,
          :direction => String.t() | nil
        }

  field(:IPProtocols, type: :list)
  field(:cidrRanges, type: :list)
  field(:direction)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PacketMirroringFilter do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PacketMirroringFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PacketMirroringFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end