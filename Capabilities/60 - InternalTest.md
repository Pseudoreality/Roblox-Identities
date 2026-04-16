# InternalTest

## Description
Members with this capability are intended for strict internal usage, usually for testing reasons. Some members that have this capability have a chance of being de-elevated to developer accessible identities in the future. Other members are restricted to internal test places only.

## Information
- **Index:** 60

## Notes
- Added 04/22/25

## Assigned API, as of v717
* [`CustomLog`](https://create.roblox.com/docs/reference/engine/classes/CustomLog)
* [`RealtimeMedia`](https://create.roblox.com/docs/reference/engine/classes/RealtimeMedia)
* [`AnalyticsService`](https://create.roblox.com/docs/reference/engine/classes/AnalyticsService) Members:
	* [`AnalyticsService.GetDurationLoggerTimestamp`](https://create.roblox.com/docs/reference/engine/classes/AnalyticsService#GetDurationLoggerTimestamp) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`CaptureService`](https://create.roblox.com/docs/reference/engine/classes/CaptureService) Members:
	* [`CaptureService.GetDeviceInfo`](https://create.roblox.com/docs/reference/engine/classes/CaptureService#GetDeviceInfo) (also requires [`Capture`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`CaptureService.InternalCheckPlayabilityAsync`](https://create.roblox.com/docs/reference/engine/classes/CaptureService#InternalCheckPlayabilityAsync) (also requires [`Capture`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`CaptureService.InternalGetStartPlaceIdAsync`](https://create.roblox.com/docs/reference/engine/classes/CaptureService#InternalGetStartPlaceIdAsync) (also requires [`Capture`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`GeometryService`](https://create.roblox.com/docs/reference/engine/classes/GeometryService) Members:
	* [`GeometryService.CreateSolidPrimitive`](https://create.roblox.com/docs/reference/engine/classes/GeometryService#CreateSolidPrimitive) (also requires [`CSG`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`ModerationService`](https://create.roblox.com/docs/reference/engine/classes/ModerationService) Members:
	* [`ModerationService.InternalRequestReviewableContentReviewAsync`](https://create.roblox.com/docs/reference/engine/classes/ModerationService#InternalRequestReviewableContentReviewAsync) (also requires [`Consequences`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`RunService`](https://create.roblox.com/docs/reference/engine/classes/RunService) Members:
	* [`RunService.FrameNumber`](https://create.roblox.com/docs/reference/engine/classes/RunService#FrameNumber) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Stats`](https://create.roblox.com/docs/reference/engine/classes/Stats) Members:
	* [`Stats.GetHarmonyQualityLevel`](https://create.roblox.com/docs/reference/engine/classes/Stats#GetHarmonyQualityLevel)
	* [`Stats.GetMemoryCategoryNames`](https://create.roblox.com/docs/reference/engine/classes/Stats#GetMemoryCategoryNames)
	* [`Stats.GetMemoryUsageMbAllCategories`](https://create.roblox.com/docs/reference/engine/classes/Stats#GetMemoryUsageMbAllCategories)
	* [`Stats.ResetHarmonyMemoryTarget`](https://create.roblox.com/docs/reference/engine/classes/Stats#ResetHarmonyMemoryTarget)
	* [`Stats.SetHarmonyMemoryTarget`](https://create.roblox.com/docs/reference/engine/classes/Stats#SetHarmonyMemoryTarget)
* [`TestService`](https://create.roblox.com/docs/reference/engine/classes/TestService) Members:
	* [`TestService.RequestValidationAsync`](https://create.roblox.com/docs/reference/engine/classes/TestService#RequestValidationAsync)
	* [`TestService.StartTestSession`](https://create.roblox.com/docs/reference/engine/classes/TestService#StartTestSession)
	* [`TestService.StopTestSession`](https://create.roblox.com/docs/reference/engine/classes/TestService#StopTestSession)
	* [`TestService.getTestSessionProviderStats`](https://create.roblox.com/docs/reference/engine/classes/TestService#getTestSessionProviderStats)