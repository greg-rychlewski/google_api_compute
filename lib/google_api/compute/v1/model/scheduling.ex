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

defmodule GoogleApi.Compute.V1.Model.Scheduling do
  @moduledoc """
  Sets the scheduling options for an Instance. NextID: 21

  ## Attributes

  *   `automaticRestart` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted.

      By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  *   `locationHint` (*type:* `String.t`, *default:* `nil`) - An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  *   `minNodeCpus` (*type:* `integer()`, *default:* `nil`) - The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  *   `nodeAffinities` (*type:* `list(GoogleApi.Compute.V1.Model.SchedulingNodeAffinity.t)`, *default:* `nil`) - A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  *   `onHostMaintenance` (*type:* `String.t`, *default:* `nil`) - Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Setting Instance Scheduling Options.
  *   `preemptible` (*type:* `boolean()`, *default:* `nil`) - Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automaticRestart => boolean() | nil,
          :locationHint => String.t() | nil,
          :minNodeCpus => integer() | nil,
          :nodeAffinities => list(GoogleApi.Compute.V1.Model.SchedulingNodeAffinity.t()) | nil,
          :onHostMaintenance => String.t() | nil,
          :preemptible => boolean() | nil
        }

  field(:automaticRestart)
  field(:locationHint)
  field(:minNodeCpus)
  field(:nodeAffinities, as: GoogleApi.Compute.V1.Model.SchedulingNodeAffinity, type: :list)
  field(:onHostMaintenance)
  field(:preemptible)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Scheduling do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Scheduling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Scheduling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end