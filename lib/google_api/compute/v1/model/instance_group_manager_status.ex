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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus do
  @moduledoc """


  ## Attributes

  *   `autoscaler` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the Autoscaler that targets this instance group manager.
  *   `isStable` (*type:* `boolean()`, *default:* `nil`) - [Output Only] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  *   `stateful` (*type:* `GoogleApi.Compute.V1.Model.InstanceGroupManagerStatusStateful.t`, *default:* `nil`) - [Output Only] Stateful status of the given Instance Group Manager.
  *   `versionTarget` (*type:* `GoogleApi.Compute.V1.Model.InstanceGroupManagerStatusVersionTarget.t`, *default:* `nil`) - [Output Only] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscaler => String.t() | nil,
          :isStable => boolean() | nil,
          :stateful => GoogleApi.Compute.V1.Model.InstanceGroupManagerStatusStateful.t() | nil,
          :versionTarget =>
            GoogleApi.Compute.V1.Model.InstanceGroupManagerStatusVersionTarget.t() | nil
        }

  field(:autoscaler)
  field(:isStable)
  field(:stateful, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerStatusStateful)
  field(:versionTarget, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerStatusVersionTarget)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
