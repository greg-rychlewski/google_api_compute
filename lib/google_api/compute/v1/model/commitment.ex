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

defmodule GoogleApi.Compute.V1.Model.Commitment do
  @moduledoc """
  Represents a regional Commitment resource.

  Creating a commitment resource means that you are purchasing a committed use contract with an explicit start and end time. You can create commitments based on vCPUs and memory usage and receive discounted rates. For full details, read Signing Up for Committed Use Discounts. (== resource_for {$api_version}.regionCommitments ==)

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `endTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Commitment end time in RFC3339 text format.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#commitment`) - [Output Only] Type of the resource. Always compute#commitment for commitments.
  *   `licenseResource` (*type:* `GoogleApi.Compute.V1.Model.LicenseResourceCommitment.t`, *default:* `nil`) - The license specification required as part of a license commitment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `plan` (*type:* `String.t`, *default:* `nil`) - The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where this commitment may be used.
  *   `reservations` (*type:* `list(GoogleApi.Compute.V1.Model.Reservation.t)`, *default:* `nil`) - List of reservations in this commitment.
  *   `resources` (*type:* `list(GoogleApi.Compute.V1.Model.ResourceCommitment.t)`, *default:* `nil`) - A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `startTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Commitment start time in RFC3339 text format.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional, human-readable explanation of the status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :endTimestamp => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :licenseResource => GoogleApi.Compute.V1.Model.LicenseResourceCommitment.t() | nil,
          :name => String.t() | nil,
          :plan => String.t() | nil,
          :region => String.t() | nil,
          :reservations => list(GoogleApi.Compute.V1.Model.Reservation.t()) | nil,
          :resources => list(GoogleApi.Compute.V1.Model.ResourceCommitment.t()) | nil,
          :selfLink => String.t() | nil,
          :startTimestamp => String.t() | nil,
          :status => String.t() | nil,
          :statusMessage => String.t() | nil
        }

  field(:category)
  field(:creationTimestamp)
  field(:description)
  field(:endTimestamp)
  field(:id)
  field(:kind)
  field(:licenseResource, as: GoogleApi.Compute.V1.Model.LicenseResourceCommitment)
  field(:name)
  field(:plan)
  field(:region)
  field(:reservations, as: GoogleApi.Compute.V1.Model.Reservation, type: :list)
  field(:resources, as: GoogleApi.Compute.V1.Model.ResourceCommitment, type: :list)
  field(:selfLink)
  field(:startTimestamp)
  field(:status)
  field(:statusMessage)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Commitment do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Commitment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Commitment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end