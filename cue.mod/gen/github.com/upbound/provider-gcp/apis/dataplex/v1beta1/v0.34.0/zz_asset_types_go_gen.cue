// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/dataplex/v1beta1

package v1beta1

#AssetObservation: {
	// Output only. The time when the asset was created.
	createTime?: null | string @go(CreateTime,*string)

	// The zone for the resource
	dataplexZone?: null | string @go(DataplexZone,*string)

	// Optional. Description of the asset.
	description?: null | string @go(Description,*string)

	// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
	discoverySpec?: [...#DiscoverySpecObservation] @go(DiscoverySpec,[]DiscoverySpecObservation)

	// Output only. Status of the discovery feature applied to data referenced by this asset.
	discoveryStatus?: [...#DiscoveryStatusObservation] @go(DiscoveryStatus,[]DiscoveryStatusObservation)

	// Optional. User friendly display name.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}
	id?: null | string @go(ID,*string)

	// Optional. User defined labels for the asset.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The lake for the resource
	lake?: null | string @go(Lake,*string)

	// The location for the resource
	location?: null | string @go(Location,*string)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// Required. Immutable. Specification of the resource that is referenced by this asset.
	resourceSpec?: [...#ResourceSpecObservation] @go(ResourceSpec,[]ResourceSpecObservation)

	// Output only. Status of the resource referenced by this asset.
	resourceStatus?: [...#ResourceStatusObservation] @go(ResourceStatus,[]ResourceStatusObservation)

	// Output only. Status of the security policy applied to resource referenced by this asset.
	securityStatus?: [...#SecurityStatusObservation] @go(SecurityStatus,[]SecurityStatusObservation)

	// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
	state?: null | string @go(State,*string)

	// Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
	uid?: null | string @go(UID,*string)

	// Output only. The time when the asset was last updated.
	updateTime?: null | string @go(UpdateTime,*string)
}

#AssetParameters: {
	// The zone for the resource
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/dataplex/v1beta1.Zone
	// +kubebuilder:validation:Optional
	dataplexZone?: null | string @go(DataplexZone,*string)

	// Optional. Description of the asset.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
	// +kubebuilder:validation:Optional
	discoverySpec?: [...#DiscoverySpecParameters] @go(DiscoverySpec,[]DiscoverySpecParameters)

	// Optional. User friendly display name.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Optional. User defined labels for the asset.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The lake for the resource
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/dataplex/v1beta1.Lake
	// +kubebuilder:validation:Optional
	lake?: null | string @go(Lake,*string)

	// The location for the resource
	// +kubebuilder:validation:Required
	location?: null | string @go(Location,*string)

	// The project for the resource
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Required. Immutable. Specification of the resource that is referenced by this asset.
	// +kubebuilder:validation:Optional
	resourceSpec?: [...#ResourceSpecParameters] @go(ResourceSpec,[]ResourceSpecParameters)
}

#CsvOptionsObservation: {
	// Optional. The delimiter being used to separate values. This defaults to ','.
	delimiter?: null | string @go(Delimiter,*string)

	// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
	disableTypeInference?: null | bool @go(DisableTypeInference,*bool)

	// Optional. The character encoding of the data. The default is UTF-8.
	encoding?: null | string @go(Encoding,*string)

	// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
	headerRows?: null | float64 @go(HeaderRows,*float64)
}

#CsvOptionsParameters: {
	// Optional. The delimiter being used to separate values. This defaults to ','.
	// +kubebuilder:validation:Optional
	delimiter?: null | string @go(Delimiter,*string)

	// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
	// +kubebuilder:validation:Optional
	disableTypeInference?: null | bool @go(DisableTypeInference,*bool)

	// Optional. The character encoding of the data. The default is UTF-8.
	// +kubebuilder:validation:Optional
	encoding?: null | string @go(Encoding,*string)

	// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
	// +kubebuilder:validation:Optional
	headerRows?: null | float64 @go(HeaderRows,*float64)
}

#DiscoverySpecObservation: {
	// Optional. Configuration for CSV data.
	csvOptions?: [...#CsvOptionsObservation] @go(CsvOptions,[]CsvOptionsObservation)

	// Required. Whether discovery is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
	excludePatterns?: [...null | string] @go(ExcludePatterns,[]*string)

	// Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
	includePatterns?: [...null | string] @go(IncludePatterns,[]*string)

	// Optional. Configuration for Json data.
	jsonOptions?: [...#JSONOptionsObservation] @go(JSONOptions,[]JSONOptionsObservation)

	// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
	schedule?: null | string @go(Schedule,*string)
}

#DiscoverySpecParameters: {
	// Optional. Configuration for CSV data.
	// +kubebuilder:validation:Optional
	csvOptions?: [...#CsvOptionsParameters] @go(CsvOptions,[]CsvOptionsParameters)

	// Required. Whether discovery is enabled.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
	// +kubebuilder:validation:Optional
	excludePatterns?: [...null | string] @go(ExcludePatterns,[]*string)

	// Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
	// +kubebuilder:validation:Optional
	includePatterns?: [...null | string] @go(IncludePatterns,[]*string)

	// Optional. Configuration for Json data.
	// +kubebuilder:validation:Optional
	jsonOptions?: [...#JSONOptionsParameters] @go(JSONOptions,[]JSONOptionsParameters)

	// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
	// +kubebuilder:validation:Optional
	schedule?: null | string @go(Schedule,*string)
}

#DiscoveryStatusObservation: {
	lastRunDuration?: null | string @go(LastRunDuration,*string)
	lastRunTime?:     null | string @go(LastRunTime,*string)
	message?:         null | string @go(Message,*string)

	// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
	state?: null | string @go(State,*string)
	stats?: [...#StatsObservation] @go(Stats,[]StatsObservation)

	// Output only. The time when the asset was last updated.
	updateTime?: null | string @go(UpdateTime,*string)
}

#DiscoveryStatusParameters: {
}

#JSONOptionsObservation: {
	// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
	disableTypeInference?: null | bool @go(DisableTypeInference,*bool)

	// Optional. The character encoding of the data. The default is UTF-8.
	encoding?: null | string @go(Encoding,*string)
}

#JSONOptionsParameters: {
	// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
	// +kubebuilder:validation:Optional
	disableTypeInference?: null | bool @go(DisableTypeInference,*bool)

	// Optional. The character encoding of the data. The default is UTF-8.
	// +kubebuilder:validation:Optional
	encoding?: null | string @go(Encoding,*string)
}

#ResourceSpecObservation: {
	// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
	name?: null | string @go(Name,*string)

	// Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET
	type?: null | string @go(Type,*string)
}

#ResourceSpecParameters: {
	// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#ResourceStatusObservation: {
	message?: null | string @go(Message,*string)

	// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
	state?: null | string @go(State,*string)

	// Output only. The time when the asset was last updated.
	updateTime?: null | string @go(UpdateTime,*string)
}

#ResourceStatusParameters: {
}

#SecurityStatusObservation: {
	message?: null | string @go(Message,*string)

	// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
	state?: null | string @go(State,*string)

	// Output only. The time when the asset was last updated.
	updateTime?: null | string @go(UpdateTime,*string)
}

#SecurityStatusParameters: {
}

#StatsObservation: {
	dataItems?: null | float64 @go(DataItems,*float64)
	dataSize?:  null | float64 @go(DataSize,*float64)
	filesets?:  null | float64 @go(Filesets,*float64)
	tables?:    null | float64 @go(Tables,*float64)
}

#StatsParameters: {
}

// AssetSpec defines the desired state of Asset
#AssetSpec: {
	forProvider: #AssetParameters @go(ForProvider)
}

// AssetStatus defines the observed state of Asset.
#AssetStatus: {
	atProvider?: #AssetObservation @go(AtProvider)
}

// Asset is the Schema for the Assets API. The Dataplex Asset resource
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Asset: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.discoverySpec)",message="discoverySpec is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.resourceSpec)",message="resourceSpec is a required parameter"
	spec:    #AssetSpec   @go(Spec)
	status?: #AssetStatus @go(Status)
}

// AssetList contains a list of Assets
#AssetList: {
	items: [...#Asset] @go(Items,[]Asset)
}
