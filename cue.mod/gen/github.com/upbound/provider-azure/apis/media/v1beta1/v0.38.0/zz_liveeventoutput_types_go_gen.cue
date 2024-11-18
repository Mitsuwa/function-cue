// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/media/v1beta1

package v1beta1

#LiveEventOutputInitParameters: {
	// ISO 8601 time between 1 minute to 25 hours to indicate the maximum content length that can be archived in the asset for this live output. This also sets the maximum content length for the rewind window. For example, use PT1H30M to indicate 1 hour and 30 minutes of archive window. Changing this forces a new Live Output to be created.
	archiveWindowDuration?: null | string @go(ArchiveWindowDuration,*string)

	// The description of the live output. Changing this forces a new Live Output to be created.
	description?: null | string @go(Description,*string)

	// The number of fragments in an HTTP Live Streaming (HLS) TS segment in the output of the live event. This value does not affect the packing ratio for HLS CMAF output. Changing this forces a new Live Output to be created.
	hlsFragmentsPerTsSegment?: null | float64 @go(HlsFragmentsPerTSSegment,*float64)

	// The manifest file name. If not provided, the service will generate one automatically. Changing this forces a new Live Output to be created.
	manifestName?: null | string @go(ManifestName,*string)

	// The initial timestamp that the live output will start at, any content before this value will not be archived. Changing this forces a new Live Output to be created.
	outputSnapTimeInSeconds?: null | float64 @go(OutputSnapTimeInSeconds,*float64)
	rewindWindowDuration?:    null | string  @go(RewindWindowDuration,*string)
}

#LiveEventOutputObservation: {
	// ISO 8601 time between 1 minute to 25 hours to indicate the maximum content length that can be archived in the asset for this live output. This also sets the maximum content length for the rewind window. For example, use PT1H30M to indicate 1 hour and 30 minutes of archive window. Changing this forces a new Live Output to be created.
	archiveWindowDuration?: null | string @go(ArchiveWindowDuration,*string)

	// The asset that the live output will write to. Changing this forces a new Live Output to be created.
	assetName?: null | string @go(AssetName,*string)

	// The description of the live output. Changing this forces a new Live Output to be created.
	description?: null | string @go(Description,*string)

	// The number of fragments in an HTTP Live Streaming (HLS) TS segment in the output of the live event. This value does not affect the packing ratio for HLS CMAF output. Changing this forces a new Live Output to be created.
	hlsFragmentsPerTsSegment?: null | float64 @go(HlsFragmentsPerTSSegment,*float64)

	// The ID of the Live Output.
	id?: null | string @go(ID,*string)

	// The id of the live event. Changing this forces a new Live Output to be created.
	liveEventId?: null | string @go(LiveEventID,*string)

	// The manifest file name. If not provided, the service will generate one automatically. Changing this forces a new Live Output to be created.
	manifestName?: null | string @go(ManifestName,*string)

	// The initial timestamp that the live output will start at, any content before this value will not be archived. Changing this forces a new Live Output to be created.
	outputSnapTimeInSeconds?: null | float64 @go(OutputSnapTimeInSeconds,*float64)
	rewindWindowDuration?:    null | string  @go(RewindWindowDuration,*string)
}

#LiveEventOutputParameters: {
	// ISO 8601 time between 1 minute to 25 hours to indicate the maximum content length that can be archived in the asset for this live output. This also sets the maximum content length for the rewind window. For example, use PT1H30M to indicate 1 hour and 30 minutes of archive window. Changing this forces a new Live Output to be created.
	// +kubebuilder:validation:Optional
	archiveWindowDuration?: null | string @go(ArchiveWindowDuration,*string)

	// The asset that the live output will write to. Changing this forces a new Live Output to be created.
	// +crossplane:generate:reference:type=Asset
	// +kubebuilder:validation:Optional
	assetName?: null | string @go(AssetName,*string)

	// The description of the live output. Changing this forces a new Live Output to be created.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The number of fragments in an HTTP Live Streaming (HLS) TS segment in the output of the live event. This value does not affect the packing ratio for HLS CMAF output. Changing this forces a new Live Output to be created.
	// +kubebuilder:validation:Optional
	hlsFragmentsPerTsSegment?: null | float64 @go(HlsFragmentsPerTSSegment,*float64)

	// The id of the live event. Changing this forces a new Live Output to be created.
	// +crossplane:generate:reference:type=LiveEvent
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	liveEventId?: null | string @go(LiveEventID,*string)

	// The manifest file name. If not provided, the service will generate one automatically. Changing this forces a new Live Output to be created.
	// +kubebuilder:validation:Optional
	manifestName?: null | string @go(ManifestName,*string)

	// The initial timestamp that the live output will start at, any content before this value will not be archived. Changing this forces a new Live Output to be created.
	// +kubebuilder:validation:Optional
	outputSnapTimeInSeconds?: null | float64 @go(OutputSnapTimeInSeconds,*float64)

	// +kubebuilder:validation:Optional
	rewindWindowDuration?: null | string @go(RewindWindowDuration,*string)
}

// LiveEventOutputSpec defines the desired state of LiveEventOutput
#LiveEventOutputSpec: {
	forProvider: #LiveEventOutputParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #LiveEventOutputInitParameters @go(InitProvider)
}

// LiveEventOutputStatus defines the observed state of LiveEventOutput.
#LiveEventOutputStatus: {
	atProvider?: #LiveEventOutputObservation @go(AtProvider)
}

// LiveEventOutput is the Schema for the LiveEventOutputs API. Manages an Azure Media Live Event Output.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LiveEventOutput: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.archiveWindowDuration) || (has(self.initProvider) && has(self.initProvider.archiveWindowDuration))",message="spec.forProvider.archiveWindowDuration is a required parameter"
	spec:    #LiveEventOutputSpec   @go(Spec)
	status?: #LiveEventOutputStatus @go(Status)
}

// LiveEventOutputList contains a list of LiveEventOutputs
#LiveEventOutputList: {
	items: [...#LiveEventOutput] @go(Items,[]LiveEventOutput)
}
