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

defmodule GoogleApi.Compute.V1.Model.VpnTunnel do
  @moduledoc """
  Represents a Cloud VPN Tunnel resource.

  For more information about VPN, read the  the Cloud VPN Overview. (== resource_for {$api_version}.vpnTunnels ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `detailedStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] Detailed status message for the VPN tunnel.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `ikeVersion` (*type:* `integer()`, *default:* `nil`) - IKE protocol version to use when establishing the VPN tunnel with the peer VPN gateway. Acceptable IKE versions are 1 or 2. The default version is 2.
  *   `kind` (*type:* `String.t`, *default:* `compute#vpnTunnel`) - [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
  *   `localTrafficSelector` (*type:* `list(String.t)`, *default:* `nil`) - Local traffic selector to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges must be disjoint. Only IPv4 is supported.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `peerExternalGateway` (*type:* `String.t`, *default:* `nil`) - URL of the peer side external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field is exclusive with the field peerGcpGateway.
  *   `peerExternalGatewayInterface` (*type:* `integer()`, *default:* `nil`) - The interface ID of the external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created.
  *   `peerGcpGateway` (*type:* `String.t`, *default:* `nil`) - URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field can be used when creating highly available VPN from VPC network to VPC network, the field is exclusive with the field peerExternalGateway. If provided, the VPN tunnel will automatically use the same vpnGatewayInterface ID in the peer GCP VPN gateway.
  *   `peerIp` (*type:* `String.t`, *default:* `nil`) - IP address of the peer VPN gateway. Only IPv4 is supported.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the VPN tunnel resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `remoteTrafficSelector` (*type:* `list(String.t)`, *default:* `nil`) - Remote traffic selectors to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported.
  *   `router` (*type:* `String.t`, *default:* `nil`) - URL of the router resource to be used for dynamic routing.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `sharedSecret` (*type:* `String.t`, *default:* `nil`) - Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.
  *   `sharedSecretHash` (*type:* `String.t`, *default:* `nil`) - Hash of the shared secret.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the VPN tunnel, which can be one of the following: 
      - PROVISIONING: Resource is being allocated for the VPN tunnel. 
      - WAITING_FOR_FULL_CONFIG: Waiting to receive all VPN-related configs from the user. Network, TargetVpnGateway, VpnTunnel, ForwardingRule, and Route resources are needed to setup the VPN tunnel. 
      - FIRST_HANDSHAKE: Successful first handshake with the peer VPN. 
      - ESTABLISHED: Secure session is successfully established with the peer VPN. 
      - NETWORK_ERROR: Deprecated, replaced by NO_INCOMING_PACKETS 
      - AUTHORIZATION_ERROR: Auth error (for example, bad shared secret). 
      - NEGOTIATION_FAILURE: Handshake failed. 
      - DEPROVISIONING: Resources are being deallocated for the VPN tunnel. 
      - FAILED: Tunnel creation has failed and the tunnel is not ready to be used. 
      - NO_INCOMING_PACKETS: No incoming packets from peer. 
      - REJECTED: Tunnel configuration was rejected, can be result of being denied access. 
      - ALLOCATING_RESOURCES: Cloud VPN is in the process of allocating all required resources. 
      - STOPPED: Tunnel is stopped due to its Forwarding Rules being deleted for Classic VPN tunnels or the project is in frozen state. 
      - PEER_IDENTITY_MISMATCH: Peer identity does not match peer IP, probably behind NAT. 
      - TS_NARROWING_NOT_ALLOWED: Traffic selector narrowing not allowed for an HA-VPN tunnel.
  *   `targetVpnGateway` (*type:* `String.t`, *default:* `nil`) - URL of the Target VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created.
  *   `vpnGateway` (*type:* `String.t`, *default:* `nil`) - URL of the VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created. This must be used (instead of target_vpn_gateway) if a High Availability VPN gateway resource is created.
  *   `vpnGatewayInterface` (*type:* `integer()`, *default:* `nil`) - The interface ID of the VPN gateway with which this VPN tunnel is associated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :detailedStatus => String.t() | nil,
          :id => String.t() | nil,
          :ikeVersion => integer() | nil,
          :kind => String.t() | nil,
          :localTrafficSelector => list(String.t()) | nil,
          :name => String.t() | nil,
          :peerExternalGateway => String.t() | nil,
          :peerExternalGatewayInterface => integer() | nil,
          :peerGcpGateway => String.t() | nil,
          :peerIp => String.t() | nil,
          :region => String.t() | nil,
          :remoteTrafficSelector => list(String.t()) | nil,
          :router => String.t() | nil,
          :selfLink => String.t() | nil,
          :sharedSecret => String.t() | nil,
          :sharedSecretHash => String.t() | nil,
          :status => String.t() | nil,
          :targetVpnGateway => String.t() | nil,
          :vpnGateway => String.t() | nil,
          :vpnGatewayInterface => integer() | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:detailedStatus)
  field(:id)
  field(:ikeVersion)
  field(:kind)
  field(:localTrafficSelector, type: :list)
  field(:name)
  field(:peerExternalGateway)
  field(:peerExternalGatewayInterface)
  field(:peerGcpGateway)
  field(:peerIp)
  field(:region)
  field(:remoteTrafficSelector, type: :list)
  field(:router)
  field(:selfLink)
  field(:sharedSecret)
  field(:sharedSecretHash)
  field(:status)
  field(:targetVpnGateway)
  field(:vpnGateway)
  field(:vpnGatewayInterface)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.VpnTunnel do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.VpnTunnel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.VpnTunnel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
