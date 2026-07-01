# InternalTest

## Description
Members with this capability are intended for strict internal usage, usually for testing reasons. Some members that have this capability have a chance of being de-elevated to developer accessible identities in the future. Other members are restricted to internal test places only.

## Information
- **Index:** 60

## Notes
- Added 04/22/25

## Assigned API, as of v728
* [`CustomLog`](https://create.roblox.com/docs/reference/engine/classes/CustomLog)
* [`RealtimeMedia`](https://create.roblox.com/docs/reference/engine/classes/RealtimeMedia)
* [`AnalyticsService`](https://create.roblox.com/docs/reference/engine/classes/AnalyticsService) Members:
	* [`AnalyticsService.GetDurationLoggerTimestamp`](https://create.roblox.com/docs/reference/engine/classes/AnalyticsService#GetDurationLoggerTimestamp) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`CaptureService`](https://create.roblox.com/docs/reference/engine/classes/CaptureService) Members:
	* [`CaptureService.GetDeviceInfo`](https://create.roblox.com/docs/reference/engine/classes/CaptureService#GetDeviceInfo) (also requires [`Capture`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`CaptureService.InternalCheckPlayabilityAsync`](https://create.roblox.com/docs/reference/engine/classes/CaptureService#InternalCheckPlayabilityAsync) (also requires [`Capture`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`CaptureService.InternalGetStartPlaceIdAsync`](https://create.roblox.com/docs/reference/engine/classes/CaptureService#InternalGetStartPlaceIdAsync) (also requires [`Capture`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`GenerationService`](https://create.roblox.com/docs/reference/engine/classes/GenerationService) Members:
	* [`GenerationService.ConnectAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#ConnectAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`GenerationService.DisconnectAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#DisconnectAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`GenerationService.GetVideoGenSessionAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#GetVideoGenSessionAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`GenerationService.GetVideoGenTriggersAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#GetVideoGenTriggersAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`GenerationService.StartVideoGenSessionAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#StartVideoGenSessionAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`GenerationService.UpdateVideoGenSessionPromptAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#UpdateVideoGenSessionPromptAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`GenerationService.UpdateVideoGenSessionTriggersAsync`](https://create.roblox.com/docs/reference/engine/classes/GenerationService#UpdateVideoGenSessionTriggersAsync) (also requires [`DynamicGeneration`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`GeometryService`](https://create.roblox.com/docs/reference/engine/classes/GeometryService) Members:
	* [`GeometryService.CreateSolidPrimitive`](https://create.roblox.com/docs/reference/engine/classes/GeometryService#CreateSolidPrimitive) (also requires [`CSG`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`MLService`](https://create.roblox.com/docs/reference/engine/classes/MLService) Members:
	* [`MLService.IsPostProcessReady`](https://create.roblox.com/docs/reference/engine/classes/MLService#IsPostProcessReady) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`MLService.LoadPostProcessModelAsync`](https://create.roblox.com/docs/reference/engine/classes/MLService#LoadPostProcessModelAsync) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`MLService.SetPostProcessEnabled`](https://create.roblox.com/docs/reference/engine/classes/MLService#SetPostProcessEnabled) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`ModerationService`](https://create.roblox.com/docs/reference/engine/classes/ModerationService) Members:
	* [`ModerationService.InternalRequestReviewableContentReviewAsync`](https://create.roblox.com/docs/reference/engine/classes/ModerationService#InternalRequestReviewableContentReviewAsync) (also requires [`Consequences`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`RunService`](https://create.roblox.com/docs/reference/engine/classes/RunService) Members:
	* [`RunService.FrameNumber`](https://create.roblox.com/docs/reference/engine/classes/RunService#FrameNumber) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`SoundService`](https://create.roblox.com/docs/reference/engine/classes/SoundService) Members:
	* [`SoundService.SetInputDevice`](https://create.roblox.com/docs/reference/engine/classes/SoundService#SetInputDevice) (also requires [`Audio`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Stats`](https://create.roblox.com/docs/reference/engine/classes/Stats) Members:
	* [`Stats.GetHarmonyQualityLevel`](https://create.roblox.com/docs/reference/engine/classes/Stats#GetHarmonyQualityLevel)
	* [`Stats.GetMemoryCategoryNames`](https://create.roblox.com/docs/reference/engine/classes/Stats#GetMemoryCategoryNames)
	* [`Stats.GetMemoryUsageMbAllCategories`](https://create.roblox.com/docs/reference/engine/classes/Stats#GetMemoryUsageMbAllCategories)
	* [`Stats.ResetHarmonyMemoryTarget`](https://create.roblox.com/docs/reference/engine/classes/Stats#ResetHarmonyMemoryTarget)
	* [`Stats.SetHarmonyMemoryTarget`](https://create.roblox.com/docs/reference/engine/classes/Stats#SetHarmonyMemoryTarget)
* [`TestService`](https://create.roblox.com/docs/reference/engine/classes/TestService) Members:
	* [`TestService.CaptureScreenshotAsync`](https://create.roblox.com/docs/reference/engine/classes/TestService#CaptureScreenshotAsync)
	* [`TestService.GetTestControlSchema`](https://create.roblox.com/docs/reference/engine/classes/TestService#GetTestControlSchema)
	* [`TestService.GetTestControls`](https://create.roblox.com/docs/reference/engine/classes/TestService#GetTestControls)
	* [`TestService.RequestValidationAsync`](https://create.roblox.com/docs/reference/engine/classes/TestService#RequestValidationAsync)
	* [`TestService.ResetTestControl`](https://create.roblox.com/docs/reference/engine/classes/TestService#ResetTestControl)
	* [`TestService.SetTestControl`](https://create.roblox.com/docs/reference/engine/classes/TestService#SetTestControl)
	* [`TestService.StartTestSession`](https://create.roblox.com/docs/reference/engine/classes/TestService#StartTestSession)
	* [`TestService.StartVideoCaptureAsync`](https://create.roblox.com/docs/reference/engine/classes/TestService#StartVideoCaptureAsync)
	* [`TestService.StopTestSession`](https://create.roblox.com/docs/reference/engine/classes/TestService#StopTestSession)
	* [`TestService.StopVideoCaptureAsync`](https://create.roblox.com/docs/reference/engine/classes/TestService#StopVideoCaptureAsync)
	* [`TestService.getTestSessionProviderStats`](https://create.roblox.com/docs/reference/engine/classes/TestService#getTestSessionProviderStats)
* [`VideoFrame`](https://create.roblox.com/docs/reference/engine/classes/VideoFrame) Members:
	* [`VideoFrame.InternalVideoUsage`](https://create.roblox.com/docs/reference/engine/classes/VideoFrame#InternalVideoUsage) (also requires [`Audio`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`UI`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`VideoFrame.MaximumResolution`](https://create.roblox.com/docs/reference/engine/classes/VideoFrame#MaximumResolution) (also requires [`Audio`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`UI`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`VideoPlayer`](https://create.roblox.com/docs/reference/engine/classes/VideoPlayer) Members:
	* [`VideoPlayer.InternalVideoUsage`](https://create.roblox.com/docs/reference/engine/classes/VideoPlayer#InternalVideoUsage) (also requires [`Audio`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`UI`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`VideoPlayer.MaximumResolution`](https://create.roblox.com/docs/reference/engine/classes/VideoPlayer#MaximumResolution) (also requires [`Audio`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control), [`UI`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
