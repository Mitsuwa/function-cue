// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storage/v1beta1

package v1beta1

#ActionsInitParameters: {
	// A base_blob block as documented below.
	baseBlob?: [...#BaseBlobInitParameters] @go(BaseBlob,[]BaseBlobInitParameters)

	// A snapshot block as documented below.
	snapshot?: [...#SnapshotInitParameters] @go(Snapshot,[]SnapshotInitParameters)

	// A version block as documented below.
	version?: [...#VersionInitParameters] @go(Version,[]VersionInitParameters)
}

#ActionsObservation: {
	// A base_blob block as documented below.
	baseBlob?: [...#BaseBlobObservation] @go(BaseBlob,[]BaseBlobObservation)

	// A snapshot block as documented below.
	snapshot?: [...#SnapshotObservation] @go(Snapshot,[]SnapshotObservation)

	// A version block as documented below.
	version?: [...#VersionObservation] @go(Version,[]VersionObservation)
}

#ActionsParameters: {
	// A base_blob block as documented below.
	// +kubebuilder:validation:Optional
	baseBlob?: [...#BaseBlobParameters] @go(BaseBlob,[]BaseBlobParameters)

	// A snapshot block as documented below.
	// +kubebuilder:validation:Optional
	snapshot?: [...#SnapshotParameters] @go(Snapshot,[]SnapshotParameters)

	// A version block as documented below.
	// +kubebuilder:validation:Optional
	version?: [...#VersionParameters] @go(Version,[]VersionParameters)
}

#BaseBlobInitParameters: {
	// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to false.
	autoTierToHotFromCoolEnabled?: null | bool @go(AutoTierToHotFromCoolEnabled,*bool)

	// The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceCreationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to delete the blob. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(DeleteAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last modification to delete the blob. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceModificationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceModificationGreaterThan,*float64)

	// The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and99999. Defaults to -1.
	tierToArchiveAfterDaysSinceCreationGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)

	// The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceModificationGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceModificationGreaterThan,*float64)

	// The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	tierToCoolAfterDaysSinceCreationGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	tierToCoolAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	tierToCoolAfterDaysSinceModificationGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceModificationGreaterThan,*float64)
}

#BaseBlobObservation: {
	// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to false.
	autoTierToHotFromCoolEnabled?: null | bool @go(AutoTierToHotFromCoolEnabled,*bool)

	// The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceCreationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to delete the blob. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(DeleteAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last modification to delete the blob. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceModificationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceModificationGreaterThan,*float64)

	// The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and99999. Defaults to -1.
	tierToArchiveAfterDaysSinceCreationGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)

	// The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceModificationGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceModificationGreaterThan,*float64)

	// The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	tierToCoolAfterDaysSinceCreationGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	tierToCoolAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	tierToCoolAfterDaysSinceModificationGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceModificationGreaterThan,*float64)
}

#BaseBlobParameters: {
	// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to false.
	// +kubebuilder:validation:Optional
	autoTierToHotFromCoolEnabled?: null | bool @go(AutoTierToHotFromCoolEnabled,*bool)

	// The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	deleteAfterDaysSinceCreationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to delete the blob. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	deleteAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(DeleteAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last modification to delete the blob. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	deleteAfterDaysSinceModificationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceModificationGreaterThan,*float64)

	// The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToArchiveAfterDaysSinceCreationGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)

	// The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToArchiveAfterDaysSinceModificationGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceModificationGreaterThan,*float64)

	// The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToCoolAfterDaysSinceCreationGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToCoolAfterDaysSinceLastAccessTimeGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceLastAccessTimeGreaterThan,*float64)

	// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToCoolAfterDaysSinceModificationGreaterThan?: null | float64 @go(TierToCoolAfterDaysSinceModificationGreaterThan,*float64)
}

#FiltersInitParameters: {
	// An array of predefined values. Valid options are blockBlob and appendBlob.
	blobTypes?: [...null | string] @go(BlobTypes,[]*string)

	// A match_blob_index_tag block as defined below. The block defines the blob index tag based filtering for blob objects.
	matchBlobIndexTag?: [...#MatchBlobIndexTagInitParameters] @go(MatchBlobIndexTag,[]MatchBlobIndexTagInitParameters)

	// An array of strings for prefixes to be matched.
	prefixMatch?: [...null | string] @go(PrefixMatch,[]*string)
}

#FiltersObservation: {
	// An array of predefined values. Valid options are blockBlob and appendBlob.
	blobTypes?: [...null | string] @go(BlobTypes,[]*string)

	// A match_blob_index_tag block as defined below. The block defines the blob index tag based filtering for blob objects.
	matchBlobIndexTag?: [...#MatchBlobIndexTagObservation] @go(MatchBlobIndexTag,[]MatchBlobIndexTagObservation)

	// An array of strings for prefixes to be matched.
	prefixMatch?: [...null | string] @go(PrefixMatch,[]*string)
}

#FiltersParameters: {
	// An array of predefined values. Valid options are blockBlob and appendBlob.
	// +kubebuilder:validation:Optional
	blobTypes?: [...null | string] @go(BlobTypes,[]*string)

	// A match_blob_index_tag block as defined below. The block defines the blob index tag based filtering for blob objects.
	// +kubebuilder:validation:Optional
	matchBlobIndexTag?: [...#MatchBlobIndexTagParameters] @go(MatchBlobIndexTag,[]MatchBlobIndexTagParameters)

	// An array of strings for prefixes to be matched.
	// +kubebuilder:validation:Optional
	prefixMatch?: [...null | string] @go(PrefixMatch,[]*string)
}

#ManagementPolicyInitParameters: {
	// A rule block as documented below.
	rule?: [...#RuleInitParameters] @go(Rule,[]RuleInitParameters)
}

#ManagementPolicyObservation: {
	// The ID of the Storage Account Management Policy.
	id?: null | string @go(ID,*string)

	// A rule block as documented below.
	rule?: [...#RuleObservation] @go(Rule,[]RuleObservation)

	// Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#ManagementPolicyParameters: {
	// A rule block as documented below.
	// +kubebuilder:validation:Optional
	rule?: [...#RuleParameters] @go(Rule,[]RuleParameters)

	// Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#MatchBlobIndexTagInitParameters: {
	// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
	name?: null | string @go(Name,*string)

	// The comparison operator which is used for object comparison and filtering. Possible value is ==. Defaults to ==.
	operation?: null | string @go(Operation,*string)

	// The filter tag value used for tag based filtering for blob objects.
	value?: null | string @go(Value,*string)
}

#MatchBlobIndexTagObservation: {
	// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
	name?: null | string @go(Name,*string)

	// The comparison operator which is used for object comparison and filtering. Possible value is ==. Defaults to ==.
	operation?: null | string @go(Operation,*string)

	// The filter tag value used for tag based filtering for blob objects.
	value?: null | string @go(Value,*string)
}

#MatchBlobIndexTagParameters: {
	// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The comparison operator which is used for object comparison and filtering. Possible value is ==. Defaults to ==.
	// +kubebuilder:validation:Optional
	operation?: null | string @go(Operation,*string)

	// The filter tag value used for tag based filtering for blob objects.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#RuleInitParameters: {
	// An actions block as documented below.
	actions?: [...#ActionsInitParameters] @go(Actions,[]ActionsInitParameters)

	// Boolean to specify whether the rule is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// A filters block as documented below.
	filters?: [...#FiltersInitParameters] @go(Filters,[]FiltersInitParameters)

	// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
	name?: null | string @go(Name,*string)
}

#RuleObservation: {
	// An actions block as documented below.
	actions?: [...#ActionsObservation] @go(Actions,[]ActionsObservation)

	// Boolean to specify whether the rule is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// A filters block as documented below.
	filters?: [...#FiltersObservation] @go(Filters,[]FiltersObservation)

	// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
	name?: null | string @go(Name,*string)
}

#RuleParameters: {
	// An actions block as documented below.
	// +kubebuilder:validation:Optional
	actions?: [...#ActionsParameters] @go(Actions,[]ActionsParameters)

	// Boolean to specify whether the rule is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// A filters block as documented below.
	// +kubebuilder:validation:Optional
	filters?: [...#FiltersParameters] @go(Filters,[]FiltersParameters)

	// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#SnapshotInitParameters: {
	// The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToArchiveAfterDaysSinceCreation?: null | float64 @go(ChangeTierToArchiveAfterDaysSinceCreation,*float64)

	// The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToCoolAfterDaysSinceCreation?: null | float64 @go(ChangeTierToCoolAfterDaysSinceCreation,*float64)

	// The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceCreationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)
}

#SnapshotObservation: {
	// The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToArchiveAfterDaysSinceCreation?: null | float64 @go(ChangeTierToArchiveAfterDaysSinceCreation,*float64)

	// The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToCoolAfterDaysSinceCreation?: null | float64 @go(ChangeTierToCoolAfterDaysSinceCreation,*float64)

	// The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceCreationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)
}

#SnapshotParameters: {
	// The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	changeTierToArchiveAfterDaysSinceCreation?: null | float64 @go(ChangeTierToArchiveAfterDaysSinceCreation,*float64)

	// The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	changeTierToCoolAfterDaysSinceCreation?: null | float64 @go(ChangeTierToCoolAfterDaysSinceCreation,*float64)

	// The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	deleteAfterDaysSinceCreationGreaterThan?: null | float64 @go(DeleteAfterDaysSinceCreationGreaterThan,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)
}

#VersionInitParameters: {
	// The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToArchiveAfterDaysSinceCreation?: null | float64 @go(ChangeTierToArchiveAfterDaysSinceCreation,*float64)

	// The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToCoolAfterDaysSinceCreation?: null | float64 @go(ChangeTierToCoolAfterDaysSinceCreation,*float64)

	// The age in days after creation to delete the blob version. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceCreation?: null | float64 @go(DeleteAfterDaysSinceCreation,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)
}

#VersionObservation: {
	// The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToArchiveAfterDaysSinceCreation?: null | float64 @go(ChangeTierToArchiveAfterDaysSinceCreation,*float64)

	// The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to -1.
	changeTierToCoolAfterDaysSinceCreation?: null | float64 @go(ChangeTierToCoolAfterDaysSinceCreation,*float64)

	// The age in days after creation to delete the blob version. Must be between 0 and 99999. Defaults to -1.
	deleteAfterDaysSinceCreation?: null | float64 @go(DeleteAfterDaysSinceCreation,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)
}

#VersionParameters: {
	// The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	changeTierToArchiveAfterDaysSinceCreation?: null | float64 @go(ChangeTierToArchiveAfterDaysSinceCreation,*float64)

	// The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	changeTierToCoolAfterDaysSinceCreation?: null | float64 @go(ChangeTierToCoolAfterDaysSinceCreation,*float64)

	// The age in days after creation to delete the blob version. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	deleteAfterDaysSinceCreation?: null | float64 @go(DeleteAfterDaysSinceCreation,*float64)

	// The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to -1.
	// +kubebuilder:validation:Optional
	tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?: null | float64 @go(TierToArchiveAfterDaysSinceLastTierChangeGreaterThan,*float64)
}

// ManagementPolicySpec defines the desired state of ManagementPolicy
#ManagementPolicySpec: {
	forProvider: #ManagementPolicyParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ManagementPolicyInitParameters @go(InitProvider)
}

// ManagementPolicyStatus defines the observed state of ManagementPolicy.
#ManagementPolicyStatus: {
	atProvider?: #ManagementPolicyObservation @go(AtProvider)
}

// ManagementPolicy is the Schema for the ManagementPolicys API. Manages an Azure Storage Account Management Policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagementPolicy: {
	spec:    #ManagementPolicySpec   @go(Spec)
	status?: #ManagementPolicyStatus @go(Status)
}

// ManagementPolicyList contains a list of ManagementPolicys
#ManagementPolicyList: {
	items: [...#ManagementPolicy] @go(Items,[]ManagementPolicy)
}
