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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagersSetInstanceTemplateRequest do
  @moduledoc """


  ## Attributes

  *   `instanceTemplate` (*type:* `String.t`, *default:* `nil`) - The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceTemplate => String.t() | nil
        }

  field(:instanceTemplate)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.InstanceGroupManagersSetInstanceTemplateRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagersSetInstanceTemplateRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.InstanceGroupManagersSetInstanceTemplateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end