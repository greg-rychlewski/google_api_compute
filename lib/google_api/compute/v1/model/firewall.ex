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

defmodule GoogleApi.Compute.V1.Model.Firewall do
  @moduledoc """
  Represents a Firewall Rule resource.

  Firewall rules allow or deny ingress traffic to, and egress traffic from your instances. For more information, read Firewall rules.

  ## Attributes

  *   `allowed` (*type:* `list(GoogleApi.Compute.V1.Model.FirewallAllowed.t)`, *default:* `nil`) - The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `denied` (*type:* `list(GoogleApi.Compute.V1.Model.FirewallDenied.t)`, *default:* `nil`) - The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this field when you create the resource.
  *   `destinationRanges` (*type:* `list(String.t)`, *default:* `nil`) - If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Only IPv4 is supported.
  *   `direction` (*type:* `String.t`, *default:* `nil`) - Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `INGRESS` traffic, you cannot specify the destinationRanges field, and for `EGRESS` traffic, you cannot specify the sourceRanges or sourceTags fields.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#firewall`) - [Output Only] Type of the resource. Always compute#firewall for firewall rules.
  *   `logConfig` (*type:* `GoogleApi.Compute.V1.Model.FirewallLogConfig.t`, *default:* `nil`) - This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  *   `network` (*type:* `String.t`, *default:* `nil`) - URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used:
      global/networks/default
      If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs:  
      - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network 
      - projects/myproject/global/networks/my-network 
      - global/networks/default
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `sourceRanges` (*type:* `list(String.t)`, *default:* `nil`) - If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Only IPv4 is supported.
  *   `sourceServiceAccounts` (*type:* `list(String.t)`, *default:* `nil`) - If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  *   `sourceTags` (*type:* `list(String.t)`, *default:* `nil`) - If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  *   `targetServiceAccounts` (*type:* `list(String.t)`, *default:* `nil`) - A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  *   `targetTags` (*type:* `list(String.t)`, *default:* `nil`) - A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowed => list(GoogleApi.Compute.V1.Model.FirewallAllowed.t()) | nil,
          :creationTimestamp => String.t() | nil,
          :denied => list(GoogleApi.Compute.V1.Model.FirewallDenied.t()) | nil,
          :description => String.t() | nil,
          :destinationRanges => list(String.t()) | nil,
          :direction => String.t() | nil,
          :disabled => boolean() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :logConfig => GoogleApi.Compute.V1.Model.FirewallLogConfig.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :priority => integer() | nil,
          :selfLink => String.t() | nil,
          :sourceRanges => list(String.t()) | nil,
          :sourceServiceAccounts => list(String.t()) | nil,
          :sourceTags => list(String.t()) | nil,
          :targetServiceAccounts => list(String.t()) | nil,
          :targetTags => list(String.t()) | nil
        }

  field(:allowed, as: GoogleApi.Compute.V1.Model.FirewallAllowed, type: :list)
  field(:creationTimestamp)
  field(:denied, as: GoogleApi.Compute.V1.Model.FirewallDenied, type: :list)
  field(:description)
  field(:destinationRanges, type: :list)
  field(:direction)
  field(:disabled)
  field(:id)
  field(:kind)
  field(:logConfig, as: GoogleApi.Compute.V1.Model.FirewallLogConfig)
  field(:name)
  field(:network)
  field(:priority)
  field(:selfLink)
  field(:sourceRanges, type: :list)
  field(:sourceServiceAccounts, type: :list)
  field(:sourceTags, type: :list)
  field(:targetServiceAccounts, type: :list)
  field(:targetTags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Firewall do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Firewall.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Firewall do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end