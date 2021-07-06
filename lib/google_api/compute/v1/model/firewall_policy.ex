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

defmodule GoogleApi.Compute.V1.Model.FirewallPolicy do
  @moduledoc """
  Represents a Firewall Policy resource. (== resource_for {$api_version}.firewallPolicies ==)

  ## Attributes

  *   `associations` (*type:* `list(GoogleApi.Compute.V1.Model.FirewallPolicyAssociation.t)`, *default:* `nil`) - A list of associations that belong to this firewall policy.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Depreacted, please use short name instead. User-provided name of the Organization firewall plicy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Specifies a fingerprint for this resource, which is essentially a hash of the metadata's contents and used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update metadata. You must always provide an up-to-date fingerprint hash in order to update or change metadata, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make get() request to the firewall policy.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#firewallPolicy`) - [Output only] Type of the resource. Always compute#firewallPolicyfor firewall policies
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the resource. It is a numeric ID allocated by GCP which uniquely identifies the Firewall Policy.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - [Output Only] The parent of the firewall policy.
  *   `ruleTupleCount` (*type:* `integer()`, *default:* `nil`) - [Output Only] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  *   `rules` (*type:* `list(GoogleApi.Compute.V1.Model.FirewallPolicyRule.t)`, *default:* `nil`) - A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a firewall policy, a default rule with action "allow" will be added.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `selfLinkWithId` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource with the resource id.
  *   `shortName` (*type:* `String.t`, *default:* `nil`) - User-provided name of the Organization firewall plicy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :associations => list(GoogleApi.Compute.V1.Model.FirewallPolicyAssociation.t()) | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :ruleTupleCount => integer() | nil,
          :rules => list(GoogleApi.Compute.V1.Model.FirewallPolicyRule.t()) | nil,
          :selfLink => String.t() | nil,
          :selfLinkWithId => String.t() | nil,
          :shortName => String.t() | nil
        }

  field(:associations, as: GoogleApi.Compute.V1.Model.FirewallPolicyAssociation, type: :list)
  field(:creationTimestamp)
  field(:description)
  field(:displayName)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:name)
  field(:parent)
  field(:ruleTupleCount)
  field(:rules, as: GoogleApi.Compute.V1.Model.FirewallPolicyRule, type: :list)
  field(:selfLink)
  field(:selfLinkWithId)
  field(:shortName)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.FirewallPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.FirewallPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.FirewallPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end