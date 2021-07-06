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

defmodule GoogleApi.Compute.V1.Model.Quota do
  @moduledoc """
  A quotas entry.

  ## Attributes

  *   `limit` (*type:* `float()`, *default:* `nil`) - [Output Only] Quota limit for this metric.
  *   `metric` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the quota metric.
  *   `owner` (*type:* `String.t`, *default:* `nil`) - [Output Only] Owning resource. This is the resource on which this quota is applied.
  *   `usage` (*type:* `float()`, *default:* `nil`) - [Output Only] Current usage of this metric.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :limit => float() | nil,
          :metric => String.t() | nil,
          :owner => String.t() | nil,
          :usage => float() | nil
        }

  field(:limit)
  field(:metric)
  field(:owner)
  field(:usage)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Quota do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Quota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Quota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end