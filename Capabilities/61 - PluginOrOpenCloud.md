# PluginOrOpenCloud

## Description
Members with this security are intended to be used by [`LuauExecutionSessionTask`](https://create.roblox.com/docs/cloud/reference/LuauExecutionSessionTask)s or [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)s. Identities with [`Plugin`](00%20-%20Plugin.md) capabilities are automatically given `PluginOrOpenCloud`.

## Information
- **Security Name:** OpenCloud Security
- **Index:** 61

## Assigned API, as of v744
* [`DataModelDiff`](https://create.roblox.com/docs/reference/engine/classes/DataModelDiff)
* [`SerializationService`](https://create.roblox.com/docs/reference/engine/classes/SerializationService)
* [`AnimationRigData`](https://create.roblox.com/docs/reference/engine/classes/AnimationRigData) Members:
	* [`AnimationRigData.LoadFromModel`](https://create.roblox.com/docs/reference/engine/classes/AnimationRigData#LoadFromModel) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Animator`](https://create.roblox.com/docs/reference/engine/classes/Animator) Members:
	* [`Animator.StepAnimations`](https://create.roblox.com/docs/reference/engine/classes/Animator#StepAnimations) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`AuroraScript`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript) Members:
	* [`AuroraScript.EnableCulling`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#EnableCulling) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.EnableLOD`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#EnableLOD) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.LODCriticality`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#LODCriticality) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.Priority`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#Priority) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.Source`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#Source) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`BaseScript`](https://create.roblox.com/docs/reference/engine/classes/BaseScript) Members:
	* [`BaseScript.RunContext`](https://create.roblox.com/docs/reference/engine/classes/BaseScript#RunContext)
* [`ChatWindowConfiguration`](https://create.roblox.com/docs/reference/engine/classes/ChatWindowConfiguration) Members:
	* [`ChatWindowConfiguration.TextChannelDisplayMode`](https://create.roblox.com/docs/reference/engine/classes/ChatWindowConfiguration#TextChannelDisplayMode) (also requires [`Chat`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`DigitsRigDescription`](https://create.roblox.com/docs/reference/engine/classes/DigitsRigDescription) Members:
	* [`DigitsRigDescription.SetJoint`](https://create.roblox.com/docs/reference/engine/classes/DigitsRigDescription#SetJoint) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`HumanoidRigDescription`](https://create.roblox.com/docs/reference/engine/classes/HumanoidRigDescription) Members:
	* [`HumanoidRigDescription.GetJoint`](https://create.roblox.com/docs/reference/engine/classes/HumanoidRigDescription#GetJoint) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`HumanoidRigDescription.GetR15JointLabels`](https://create.roblox.com/docs/reference/engine/classes/HumanoidRigDescription#GetR15JointLabels) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`HumanoidRigDescription.OriginOffset`](https://create.roblox.com/docs/reference/engine/classes/HumanoidRigDescription#OriginOffset) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`HumanoidRigDescription.SetJoint`](https://create.roblox.com/docs/reference/engine/classes/HumanoidRigDescription#SetJoint) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`HumanoidRigDescription.SetTposeAdjustment`](https://create.roblox.com/docs/reference/engine/classes/HumanoidRigDescription#SetTposeAdjustment) (also requires [`Animation`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Lighting`](https://create.roblox.com/docs/reference/engine/classes/Lighting) Members:
	* [`Lighting.LightingStyle`](https://create.roblox.com/docs/reference/engine/classes/Lighting#LightingStyle) (also requires [`Environment`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`Lighting.PrioritizeLightingQuality`](https://create.roblox.com/docs/reference/engine/classes/Lighting#PrioritizeLightingQuality) (also requires [`Environment`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`MeshPart`](https://create.roblox.com/docs/reference/engine/classes/MeshPart) Members:
	* [`MeshPart.RenderFidelity`](https://create.roblox.com/docs/reference/engine/classes/MeshPart#RenderFidelity) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Model`](https://create.roblox.com/docs/reference/engine/classes/Model) Members:
	* [`Model.LevelOfDetail`](https://create.roblox.com/docs/reference/engine/classes/Model#LevelOfDetail)
* [`ModuleScript`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript) Members:
	* [`ModuleScript.Source`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript#Source)
* [`PartOperation`](https://create.roblox.com/docs/reference/engine/classes/PartOperation) Members:
	* [`PartOperation.RenderFidelity`](https://create.roblox.com/docs/reference/engine/classes/PartOperation#RenderFidelity) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`CSG`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`PartOperation.SmoothingAngle`](https://create.roblox.com/docs/reference/engine/classes/PartOperation#SmoothingAngle) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`CSG`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`RunService`](https://create.roblox.com/docs/reference/engine/classes/RunService) Members:
	* [`RunService.IsEdit`](https://create.roblox.com/docs/reference/engine/classes/RunService#IsEdit) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`RunService.Misprediction`](https://create.roblox.com/docs/reference/engine/classes/RunService#Misprediction) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`RunService.RunState`](https://create.roblox.com/docs/reference/engine/classes/RunService#RunState) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`Plugin`](00%20-%20Plugin.md))
* [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script) Members:
	* [`Script.Source`](https://create.roblox.com/docs/reference/engine/classes/Script#Source)
* [`ScriptContext`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext) Members:
	* [`ScriptContext.EnableCoverage`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext#EnableCoverage)
	* [`ScriptContext.GetCoverageStats`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext#GetCoverageStats)
* [`TriangleMeshPart`](https://create.roblox.com/docs/reference/engine/classes/TriangleMeshPart) Members:
	* [`TriangleMeshPart.CollisionFidelity`](https://create.roblox.com/docs/reference/engine/classes/TriangleMeshPart#CollisionFidelity) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`TriangleMeshPart.FluidFidelity`](https://create.roblox.com/docs/reference/engine/classes/TriangleMeshPart#FluidFidelity) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Workspace`](https://create.roblox.com/docs/reference/engine/classes/Workspace) Members:
	* [`Workspace.FallHeightEnabled`](https://create.roblox.com/docs/reference/engine/classes/Workspace#FallHeightEnabled) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`Workspace.FallenPartsDestroyHeight`](https://create.roblox.com/docs/reference/engine/classes/Workspace#FallenPartsDestroyHeight) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`Workspace.LuauTypeCheckMode`](https://create.roblox.com/docs/reference/engine/classes/Workspace#LuauTypeCheckMode)
	* [`Workspace.ReplicationFrequency`](https://create.roblox.com/docs/reference/engine/classes/Workspace#ReplicationFrequency)
	* [`Workspace.ReplicationThroughput`](https://create.roblox.com/docs/reference/engine/classes/Workspace#ReplicationThroughput)
	* [`Workspace.StreamingAdaptiveRadius`](https://create.roblox.com/docs/reference/engine/classes/Workspace#StreamingAdaptiveRadius)
	* [`Workspace.StreamingEnabled`](https://create.roblox.com/docs/reference/engine/classes/Workspace#StreamingEnabled)