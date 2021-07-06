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

defmodule GoogleApi.Compute.V1.Model.HealthCheckReference do
  @moduledoc """
  A full or valid partial URL to a health check. For example, the following are valid URLs:  
  - https://www.googleapis.com/compute/beta/projects/project-id/global/httpHealthChecks/health-check 
  - projects/project-id/global/httpHealthChecks/health-check 
  - global/httpHealthChecks/health-check

  ## Attributes

  *   `healthCheck` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :healthCheck => String.t() | nil
        }

  field(:healthCheck)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HealthCheckReference do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HealthCheckReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HealthCheckReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end