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

defmodule GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface do
  @moduledoc """
  A VPN gateway interface.

  ## Attributes

  *   `id` (*type:* `integer()`, *default:* `nil`) - [Output Only] Numeric identifier for this VPN interface associated with the VPN gateway.
  *   `interconnectAttachment` (*type:* `String.t`, *default:* `nil`) - URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for IPsec-encrypted Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
      Not currently available publicly.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] IP address for this VPN interface associated with the VPN gateway. The IP address could be either a regional external IP address or a regional internal IP address. The two IP addresses for a VPN gateway must be all regional external or regional internal IP addresses. There cannot be a mix of regional external IP addresses and regional internal IP addresses. For IPsec-encrypted Cloud Interconnect, the IP addresses for both interfaces could either be regional internal IP addresses or regional external IP addresses. For regular (non IPsec-encrypted Cloud Interconnect) HA VPN tunnels, the IP address must be a regional external IP address.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :interconnectAttachment => String.t() | nil,
          :ipAddress => String.t() | nil
        }

  field(:id)
  field(:interconnectAttachment)
  field(:ipAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end