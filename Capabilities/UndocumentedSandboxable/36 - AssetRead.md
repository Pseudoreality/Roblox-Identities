# AssetRead
> [!IMPORTANT]
> This is an undocumented Sandboxable capability. If/when the capability receives [official documentation](https://create.roblox.com/docs/scripting/capabilities), this file will be removed!

## Description
Access to any API that are capable of reading cloud assets or anything related to them.

## Assigned API, as of v710
- `AssetService` Members:
  - [`AssetService.CreateEditableImageAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#CreateEditableImageAsync)
  - [`AssetService.CreateEditableMeshAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#CreateEditableMeshAsync)
  - [`AssetService.GetAssetIdsForPackageAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#GetAssetIdsForPackageAsync)
  - [`AssetService.GetAssetIdsForPackage`](https://create.roblox.com/docs/reference/engine/classes/AssetService#GetAssetIdsForPackage)
  - [`AssetService.GetAudioMetadataAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#GetAudioMetadataAsync)
  - [`AssetService.GetBundleDetailsAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#GetBundleDetailsAsync)
  - [`AssetService.GetGamePlacesAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#GetGamePlacesAsync)
  - [`AssetService.SearchAudioAsync`](https://create.roblox.com/docs/reference/engine/classes/AssetService#SearchAudioAsync)
  - [`AssetService.SearchAudio`](https://create.roblox.com/docs/reference/engine/classes/AssetService#SearchAudio)
- [`AudioPages`](https://create.roblox.com/docs/reference/engine/classes/AudioPages), [`CatalogPages`](https://create.roblox.com/docs/reference/engine/classes/CatalogPages), [`EmotesPages`](https://create.roblox.com/docs/reference/engine/classes/EmotesPages), [`OutfitPages`](https://create.roblox.com/docs/reference/engine/classes/OutfitPages)[`InventoryPages`](https://create.roblox.com/docs/reference/engine/classes/InventoryPages)
- [`AudioSearchParams`](https://create.roblox.com/docs/reference/engine/classes/AudioSearchParams)
- AvatarEditorService Members
  - [`AvatarEditorService.GetBatchItemDetailsAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetBatchItemDetailsAsync),
  - [`AvatarEditorService.GetBatchItemDetails`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetBatchItemDetails)
  - [`AvatarEditorService.GetFavoriteAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetFavoriteAsync) (also requires **Players**)
  - [`AvatarEditorService.GetFavorite`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetFavorite) (also requires **Players**)
  - [`AvatarEditorService.GetInventoryAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetInventoryAsync) (also requires **Players**)
  - [`AvatarEditorService.GetInventory`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetInventory) (also requires **Players**)
  - [`AvatarEditorService.GetItemDetailsAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetItemDetailsAsync)
  - [`AvatarEditorService.GetItemDetails`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetItemDetails)
  - [`AvatarEditorService.GetOutfitDetailsAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetOutfitDetailsAsync)
  - [`AvatarEditorService.GetOutfitDetails`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetOutfitDetails)
  - [`AvatarEditorService.GetOutfitsAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetOutfitsAsync) (also requires **Players**)
  - [`AvatarEditorService.GetOutfits`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetOutfits) (also requires **Players**)
  - [`AvatarEditorService.GetRecommendedAssetsAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetRecommendedAssetsAsync)
  - [`AvatarEditorService.GetRecommendedAssets`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetRecommendedAssets)
  - [`AvatarEditorService.GetRecommendedBundlesAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetRecommendedBundlesAsync)
  - [`AvatarEditorService.GetRecommendedBundles`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#GetRecommendedBundles)
  - [`AvatarEditorService.PromptAllowInventoryReadAccessCompleted`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#PromptAllowInventoryReadAccessCompleted) (also requires **Players**)
  - [`AvatarEditorService.PromptAllowInventoryReadAccess`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#PromptAllowInventoryReadAccess) (also requires **Players**)
  - [`AvatarEditorService.SearchCatalogAsync`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#SearchCatalogAsync)
  - [`AvatarEditorService.SearchCatalog`](https://create.roblox.com/docs/reference/engine/classes/AvatarEditorService#SearchCatalog)
- [`File`](https://create.roblox.com/docs/reference/engine/classes/File)
- InsertService Members:
  - [`InsertService.GetFreeDecalsAsync`](https://create.roblox.com/docs/reference/engine/classes/InsertService#GetFreeDecalsAsync),
  - [`InsertService.GetFreeDecals`](https://create.roblox.com/docs/reference/engine/classes/InsertService#GetFreeDecals),
  - [`InsertService.GetFreeModelsAsync`](https://create.roblox.com/docs/reference/engine/classes/InsertService#GetFreeModelsAsync)
  - [`InsertService.GetFreeModels`](https://create.roblox.com/docs/reference/engine/classes/InsertService#GetFreeModels)
  - [`InsertService.GetLatestAssetVersionAsync`](https://create.roblox.com/docs/reference/engine/classes/InsertService#GetLatestAssetVersionAsync)
- `MarketplaceService` Members:
  - [`MarketplaceService.GetDeveloperProductsAsync`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#GetDeveloperProductsAsync)
  - [`MarketplaceService.GetProductInfoAsync`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#GetProductInfoAsync)
  - [`MarketplaceService.GetProductInfo`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#GetProductInfo)
  - [`MarketplaceService.GetSubscriptionProductInfoAsync`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#GetSubscriptionProductInfoAsync)
  - [`MarketplaceService.PlayerOwnsAssetAsync`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#PlayerOwnsAssetAsync)
  - [`MarketplaceService.PlayerOwnsAsset`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#PlayerOwnsAsset)
  - [`MarketplaceService.PlayerOwnsBundleAsync`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#PlayerOwnsBundleAsync)
  - [`MarketplaceService.PlayerOwnsBundle`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#PlayerOwnsBundle)
  - [`MarketplaceService.UserOwnsGamePassAsync`](https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#UserOwnsGamePassAsync)
- `PackageLink` Members:
  - [`PackageLink.Creator`](https://create.roblox.com/docs/reference/engine/classes/PackageLink#Creator)
  - [`PackageLink.PackageAssetName`](https://create.roblox.com/docs/reference/engine/classes/PackageLink#PackageAssetName)
  - [`PackageLink.PackageId`](https://create.roblox.com/docs/reference/engine/classes/PackageLink#PackageId)
  - [`PackageLink.PermissionLevel`](https://create.roblox.com/docs/reference/engine/classes/PackageLink#PermissionLevel)