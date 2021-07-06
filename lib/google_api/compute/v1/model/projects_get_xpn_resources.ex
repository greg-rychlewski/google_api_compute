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

defmodule GoogleApi.Compute.V1.Model.ProjectsGetXpnResources do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `compute#projectsGetXpnResources`) - [Output Only] Type of resource. Always compute#projectsGetXpnResources for lists of service resources (a.k.a service projects)
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results.
  *   `resources` (*type:* `list(GoogleApi.Compute.V1.Model.XpnResourceId.t)`, *default:* `nil`) - Service resources (a.k.a service projects) attached to this project as their shared VPC host.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :resources => list(GoogleApi.Compute.V1.Model.XpnResourceId.t()) | nil
        }

  field(:kind)
  field(:nextPageToken)
  field(:resources, as: GoogleApi.Compute.V1.Model.XpnResourceId, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ProjectsGetXpnResources do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ProjectsGetXpnResources.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ProjectsGetXpnResources do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
