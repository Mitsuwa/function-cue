// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cosmosdb/v1beta1

package v1beta1

#CompositeIndexIndexInitParameters: {
	// Order of the index. Possible values are Ascending or Descending.
	order?: null | string @go(Order,*string)

	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#CompositeIndexIndexObservation: {
	// Order of the index. Possible values are Ascending or Descending.
	order?: null | string @go(Order,*string)

	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#CompositeIndexIndexParameters: {
	// Order of the index. Possible values are Ascending or Descending.
	// +kubebuilder:validation:Optional
	order?: null | string @go(Order,*string)

	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)
}

#ExcludedPathInitParameters: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#ExcludedPathObservation: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#ExcludedPathParameters: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)
}

#IncludedPathInitParameters: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#IncludedPathObservation: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#IncludedPathParameters: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)
}

#IndexingPolicyCompositeIndexInitParameters: {
	// One or more index blocks as defined below.
	index?: [...#CompositeIndexIndexInitParameters] @go(Index,[]CompositeIndexIndexInitParameters)
}

#IndexingPolicyCompositeIndexObservation: {
	// One or more index blocks as defined below.
	index?: [...#CompositeIndexIndexObservation] @go(Index,[]CompositeIndexIndexObservation)
}

#IndexingPolicyCompositeIndexParameters: {
	// One or more index blocks as defined below.
	// +kubebuilder:validation:Optional
	index: [...#CompositeIndexIndexParameters] @go(Index,[]CompositeIndexIndexParameters)
}

#IndexingPolicyInitParameters: {
	// One or more composite_index blocks as defined below.
	compositeIndex?: [...#IndexingPolicyCompositeIndexInitParameters] @go(CompositeIndex,[]IndexingPolicyCompositeIndexInitParameters)

	// One or more excluded_path blocks as defined below. Either included_path or excluded_path must contain the path /*
	excludedPath?: [...#ExcludedPathInitParameters] @go(ExcludedPath,[]ExcludedPathInitParameters)

	// One or more included_path blocks as defined below. Either included_path or excluded_path must contain the path /*
	includedPath?: [...#IncludedPathInitParameters] @go(IncludedPath,[]IncludedPathInitParameters)

	// Indicates the indexing mode. Possible values include: consistent and none. Defaults to consistent.
	indexingMode?: null | string @go(IndexingMode,*string)

	// One or more spatial_index blocks as defined below.
	spatialIndex?: [...#IndexingPolicySpatialIndexInitParameters] @go(SpatialIndex,[]IndexingPolicySpatialIndexInitParameters)
}

#IndexingPolicyObservation: {
	// One or more composite_index blocks as defined below.
	compositeIndex?: [...#IndexingPolicyCompositeIndexObservation] @go(CompositeIndex,[]IndexingPolicyCompositeIndexObservation)

	// One or more excluded_path blocks as defined below. Either included_path or excluded_path must contain the path /*
	excludedPath?: [...#ExcludedPathObservation] @go(ExcludedPath,[]ExcludedPathObservation)

	// One or more included_path blocks as defined below. Either included_path or excluded_path must contain the path /*
	includedPath?: [...#IncludedPathObservation] @go(IncludedPath,[]IncludedPathObservation)

	// Indicates the indexing mode. Possible values include: consistent and none. Defaults to consistent.
	indexingMode?: null | string @go(IndexingMode,*string)

	// One or more spatial_index blocks as defined below.
	spatialIndex?: [...#IndexingPolicySpatialIndexObservation] @go(SpatialIndex,[]IndexingPolicySpatialIndexObservation)
}

#IndexingPolicyParameters: {
	// One or more composite_index blocks as defined below.
	// +kubebuilder:validation:Optional
	compositeIndex?: [...#IndexingPolicyCompositeIndexParameters] @go(CompositeIndex,[]IndexingPolicyCompositeIndexParameters)

	// One or more excluded_path blocks as defined below. Either included_path or excluded_path must contain the path /*
	// +kubebuilder:validation:Optional
	excludedPath?: [...#ExcludedPathParameters] @go(ExcludedPath,[]ExcludedPathParameters)

	// One or more included_path blocks as defined below. Either included_path or excluded_path must contain the path /*
	// +kubebuilder:validation:Optional
	includedPath?: [...#IncludedPathParameters] @go(IncludedPath,[]IncludedPathParameters)

	// Indicates the indexing mode. Possible values include: consistent and none. Defaults to consistent.
	// +kubebuilder:validation:Optional
	indexingMode?: null | string @go(IndexingMode,*string)

	// One or more spatial_index blocks as defined below.
	// +kubebuilder:validation:Optional
	spatialIndex?: [...#IndexingPolicySpatialIndexParameters] @go(SpatialIndex,[]IndexingPolicySpatialIndexParameters)
}

#IndexingPolicySpatialIndexInitParameters: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)
}

#IndexingPolicySpatialIndexObservation: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	path?: null | string @go(Path,*string)

	// A set of spatial types of the path.
	types?: [...null | string] @go(Types,[]*string)
}

#IndexingPolicySpatialIndexParameters: {
	// Path for which the indexing behaviour applies to. According to the service design, all spatial types including LineString, MultiPolygon, Point, and Polygon will be applied to the path.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)
}

#SQLContainerAutoscaleSettingsInitParameters: {
	// The maximum throughput of the SQL container (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#SQLContainerAutoscaleSettingsObservation: {
	// The maximum throughput of the SQL container (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#SQLContainerAutoscaleSettingsParameters: {
	// The maximum throughput of the SQL container (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	// +kubebuilder:validation:Optional
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#SQLContainerConflictResolutionPolicyInitParameters: {
	// The conflict resolution path in the case of LastWriterWins mode.
	conflictResolutionPath?: null | string @go(ConflictResolutionPath,*string)

	// The procedure to resolve conflicts in the case of Custom mode.
	conflictResolutionProcedure?: null | string @go(ConflictResolutionProcedure,*string)

	// Indicates the conflict resolution mode. Possible values include: LastWriterWins, Custom.
	mode?: null | string @go(Mode,*string)
}

#SQLContainerConflictResolutionPolicyObservation: {
	// The conflict resolution path in the case of LastWriterWins mode.
	conflictResolutionPath?: null | string @go(ConflictResolutionPath,*string)

	// The procedure to resolve conflicts in the case of Custom mode.
	conflictResolutionProcedure?: null | string @go(ConflictResolutionProcedure,*string)

	// Indicates the conflict resolution mode. Possible values include: LastWriterWins, Custom.
	mode?: null | string @go(Mode,*string)
}

#SQLContainerConflictResolutionPolicyParameters: {
	// The conflict resolution path in the case of LastWriterWins mode.
	// +kubebuilder:validation:Optional
	conflictResolutionPath?: null | string @go(ConflictResolutionPath,*string)

	// The procedure to resolve conflicts in the case of Custom mode.
	// +kubebuilder:validation:Optional
	conflictResolutionProcedure?: null | string @go(ConflictResolutionProcedure,*string)

	// Indicates the conflict resolution mode. Possible values include: LastWriterWins, Custom.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)
}

#SQLContainerInitParameters: {
	// The default time to live of Analytical Storage for this SQL container. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time.
	analyticalStorageTtl?: null | float64 @go(AnalyticalStorageTTL,*float64)

	// An autoscale_settings block as defined below. Requires partition_key_path to be set.
	autoscaleSettings?: [...#SQLContainerAutoscaleSettingsInitParameters] @go(AutoscaleSettings,[]SQLContainerAutoscaleSettingsInitParameters)

	// A conflict_resolution_policy blocks as defined below. Changing this forces a new resource to be created.
	conflictResolutionPolicy?: [...#SQLContainerConflictResolutionPolicyInitParameters] @go(ConflictResolutionPolicy,[]SQLContainerConflictResolutionPolicyInitParameters)

	// The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time.
	defaultTtl?: null | float64 @go(DefaultTTL,*float64)

	// An indexing_policy block as defined below.
	indexingPolicy?: [...#IndexingPolicyInitParameters] @go(IndexingPolicy,[]IndexingPolicyInitParameters)

	// Define a partition key. Changing this forces a new resource to be created.
	partitionKeyPath?: null | string @go(PartitionKeyPath,*string)

	// Define a partition key version. Changing this forces a new resource to be created. Possible values are 1and 2. This should be set to 2 in order to use large partition keys.
	partitionKeyVersion?: null | float64 @go(PartitionKeyVersion,*float64)

	// The throughput of SQL container (RU/s). Must be set in increments of 100. The minimum value is 400.
	throughput?: null | float64 @go(Throughput,*float64)

	// One or more unique_key blocks as defined below. Changing this forces a new resource to be created.
	uniqueKey?: [...#SQLContainerUniqueKeyInitParameters] @go(UniqueKey,[]SQLContainerUniqueKeyInitParameters)
}

#SQLContainerObservation: {
	// The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created.
	accountName?: null | string @go(AccountName,*string)

	// The default time to live of Analytical Storage for this SQL container. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time.
	analyticalStorageTtl?: null | float64 @go(AnalyticalStorageTTL,*float64)

	// An autoscale_settings block as defined below. Requires partition_key_path to be set.
	autoscaleSettings?: [...#SQLContainerAutoscaleSettingsObservation] @go(AutoscaleSettings,[]SQLContainerAutoscaleSettingsObservation)

	// A conflict_resolution_policy blocks as defined below. Changing this forces a new resource to be created.
	conflictResolutionPolicy?: [...#SQLContainerConflictResolutionPolicyObservation] @go(ConflictResolutionPolicy,[]SQLContainerConflictResolutionPolicyObservation)

	// The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
	databaseName?: null | string @go(DatabaseName,*string)

	// The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time.
	defaultTtl?: null | float64 @go(DefaultTTL,*float64)

	// The ID of the CosmosDB SQL Container.
	id?: null | string @go(ID,*string)

	// An indexing_policy block as defined below.
	indexingPolicy?: [...#IndexingPolicyObservation] @go(IndexingPolicy,[]IndexingPolicyObservation)

	// Define a partition key. Changing this forces a new resource to be created.
	partitionKeyPath?: null | string @go(PartitionKeyPath,*string)

	// Define a partition key version. Changing this forces a new resource to be created. Possible values are 1and 2. This should be set to 2 in order to use large partition keys.
	partitionKeyVersion?: null | float64 @go(PartitionKeyVersion,*float64)

	// The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The throughput of SQL container (RU/s). Must be set in increments of 100. The minimum value is 400.
	throughput?: null | float64 @go(Throughput,*float64)

	// One or more unique_key blocks as defined below. Changing this forces a new resource to be created.
	uniqueKey?: [...#SQLContainerUniqueKeyObservation] @go(UniqueKey,[]SQLContainerUniqueKeyObservation)
}

#SQLContainerParameters: {
	// The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Account
	// +kubebuilder:validation:Optional
	accountName?: null | string @go(AccountName,*string)

	// The default time to live of Analytical Storage for this SQL container. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time.
	// +kubebuilder:validation:Optional
	analyticalStorageTtl?: null | float64 @go(AnalyticalStorageTTL,*float64)

	// An autoscale_settings block as defined below. Requires partition_key_path to be set.
	// +kubebuilder:validation:Optional
	autoscaleSettings?: [...#SQLContainerAutoscaleSettingsParameters] @go(AutoscaleSettings,[]SQLContainerAutoscaleSettingsParameters)

	// A conflict_resolution_policy blocks as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	conflictResolutionPolicy?: [...#SQLContainerConflictResolutionPolicyParameters] @go(ConflictResolutionPolicy,[]SQLContainerConflictResolutionPolicyParameters)

	// The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=SQLDatabase
	// +kubebuilder:validation:Optional
	databaseName?: null | string @go(DatabaseName,*string)

	// The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time.
	// +kubebuilder:validation:Optional
	defaultTtl?: null | float64 @go(DefaultTTL,*float64)

	// An indexing_policy block as defined below.
	// +kubebuilder:validation:Optional
	indexingPolicy?: [...#IndexingPolicyParameters] @go(IndexingPolicy,[]IndexingPolicyParameters)

	// Define a partition key. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	partitionKeyPath?: null | string @go(PartitionKeyPath,*string)

	// Define a partition key version. Changing this forces a new resource to be created. Possible values are 1and 2. This should be set to 2 in order to use large partition keys.
	// +kubebuilder:validation:Optional
	partitionKeyVersion?: null | float64 @go(PartitionKeyVersion,*float64)

	// The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The throughput of SQL container (RU/s). Must be set in increments of 100. The minimum value is 400.
	// +kubebuilder:validation:Optional
	throughput?: null | float64 @go(Throughput,*float64)

	// One or more unique_key blocks as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	uniqueKey?: [...#SQLContainerUniqueKeyParameters] @go(UniqueKey,[]SQLContainerUniqueKeyParameters)
}

#SQLContainerUniqueKeyInitParameters: {
	// A list of paths to use for this unique key. Changing this forces a new resource to be created.
	paths?: [...null | string] @go(Paths,[]*string)
}

#SQLContainerUniqueKeyObservation: {
	// A list of paths to use for this unique key. Changing this forces a new resource to be created.
	paths?: [...null | string] @go(Paths,[]*string)
}

#SQLContainerUniqueKeyParameters: {
	// A list of paths to use for this unique key. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	paths: [...null | string] @go(Paths,[]*string)
}

// SQLContainerSpec defines the desired state of SQLContainer
#SQLContainerSpec: {
	forProvider: #SQLContainerParameters @go(ForProvider)

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
	initProvider?: #SQLContainerInitParameters @go(InitProvider)
}

// SQLContainerStatus defines the observed state of SQLContainer.
#SQLContainerStatus: {
	atProvider?: #SQLContainerObservation @go(AtProvider)
}

// SQLContainer is the Schema for the SQLContainers API. Manages a SQL Container within a Cosmos DB Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SQLContainer: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.partitionKeyPath) || (has(self.initProvider) && has(self.initProvider.partitionKeyPath))",message="spec.forProvider.partitionKeyPath is a required parameter"
	spec:    #SQLContainerSpec   @go(Spec)
	status?: #SQLContainerStatus @go(Status)
}

// SQLContainerList contains a list of SQLContainers
#SQLContainerList: {
	items: [...#SQLContainer] @go(Items,[]SQLContainer)
}
