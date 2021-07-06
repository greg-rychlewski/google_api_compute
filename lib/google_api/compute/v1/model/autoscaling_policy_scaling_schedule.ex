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

defmodule GoogleApi.Compute.V1.Model.AutoscalingPolicyScalingSchedule do
  @moduledoc """
  Scaling based on user-defined schedule. The message describes a single scaling schedule. A scaling schedule changes the minimum number of VM instances an autoscaler can recommend, which can trigger scaling out.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of a scaling schedule.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - A boolean value that specifies whether a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect. This field is optional, and its value is false by default.
  *   `durationSec` (*type:* `integer()`, *default:* `nil`) - The duration of time intervals, in seconds, for which this scaling schedule is to run. The minimum allowed value is 300. This field is required.
  *   `minRequiredReplicas` (*type:* `integer()`, *default:* `nil`) - The minimum number of VM instances that the autoscaler will recommend in time intervals starting according to schedule. This field is required.
  *   `schedule` (*type:* `String.t`, *default:* `nil`) - The start timestamps of time intervals when this scaling schedule is to provide a scaling signal. This field uses the extended cron format (with an optional year field). The expression can describe a single timestamp if the optional year is set, in which case the scaling schedule runs once. The schedule is interpreted with respect to time_zone. This field is required. Note: These timestamps only describe when autoscaler starts providing the scaling signal. The VMs need additional time to become serving.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone to use when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database. This field is assigned a default value of ?UTC? if left empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :disabled => boolean() | nil,
          :durationSec => integer() | nil,
          :minRequiredReplicas => integer() | nil,
          :schedule => String.t() | nil,
          :timeZone => String.t() | nil
        }

  field(:description)
  field(:disabled)
  field(:durationSec)
  field(:minRequiredReplicas)
  field(:schedule)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyScalingSchedule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalingPolicyScalingSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyScalingSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
