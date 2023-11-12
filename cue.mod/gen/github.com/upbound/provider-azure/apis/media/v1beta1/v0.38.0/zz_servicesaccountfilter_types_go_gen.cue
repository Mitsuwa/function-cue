// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/media/v1beta1

package v1beta1

#ServicesAccountFilterInitParameters: {
	// The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning.
	firstQualityBitrate?: null | float64 @go(FirstQualityBitrate,*float64)

	// A presentation_time_range block as defined below.
	presentationTimeRange?: [...#ServicesAccountFilterPresentationTimeRangeInitParameters] @go(PresentationTimeRange,[]ServicesAccountFilterPresentationTimeRangeInitParameters)

	// One or more track_selection blocks as defined below.
	trackSelection?: [...#ServicesAccountFilterTrackSelectionInitParameters] @go(TrackSelection,[]ServicesAccountFilterTrackSelectionInitParameters)
}

#ServicesAccountFilterObservation: {
	// The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning.
	firstQualityBitrate?: null | float64 @go(FirstQualityBitrate,*float64)

	// The ID of the Account Filter.
	id?: null | string @go(ID,*string)

	// The Media Services account name. Changing this forces a new Account Filter to be created.
	mediaServicesAccountName?: null | string @go(MediaServicesAccountName,*string)

	// A presentation_time_range block as defined below.
	presentationTimeRange?: [...#ServicesAccountFilterPresentationTimeRangeObservation] @go(PresentationTimeRange,[]ServicesAccountFilterPresentationTimeRangeObservation)

	// The name of the Resource Group where the Account Filter should exist. Changing this forces a new Account Filter to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// One or more track_selection blocks as defined below.
	trackSelection?: [...#ServicesAccountFilterTrackSelectionObservation] @go(TrackSelection,[]ServicesAccountFilterTrackSelectionObservation)
}

#ServicesAccountFilterParameters: {
	// The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning.
	// +kubebuilder:validation:Optional
	firstQualityBitrate?: null | float64 @go(FirstQualityBitrate,*float64)

	// The Media Services account name. Changing this forces a new Account Filter to be created.
	// +crossplane:generate:reference:type=ServicesAccount
	// +kubebuilder:validation:Optional
	mediaServicesAccountName?: null | string @go(MediaServicesAccountName,*string)

	// A presentation_time_range block as defined below.
	// +kubebuilder:validation:Optional
	presentationTimeRange?: [...#ServicesAccountFilterPresentationTimeRangeParameters] @go(PresentationTimeRange,[]ServicesAccountFilterPresentationTimeRangeParameters)

	// The name of the Resource Group where the Account Filter should exist. Changing this forces a new Account Filter to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// One or more track_selection blocks as defined below.
	// +kubebuilder:validation:Optional
	trackSelection?: [...#ServicesAccountFilterTrackSelectionParameters] @go(TrackSelection,[]ServicesAccountFilterTrackSelectionParameters)
}

#ServicesAccountFilterPresentationTimeRangeInitParameters: {
	// The absolute end time boundary. Applies to Video on Demand (VoD).
	// For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is defined by unit_timescale_in_milliseconds, so an end_in_units of 180 would be for 3 minutes. Use start_in_units and end_in_units to trim the fragments that will be in the playlist (manifest). For example, start_in_units set to 20 and end_in_units set to 60 using unit_timescale_in_milliseconds in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
	endInUnits?: null | float64 @go(EndInUnits,*float64)

	// Indicates whether the end_in_units property must be present. If true, end_in_units must be specified or a bad request code is returned. Applies to Live Streaming only. Allowed values: false, true.
	forceEnd?: null | bool @go(ForceEnd,*bool)

	// The relative to end right edge. Applies to Live Streaming only.
	// This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit is defined by unit_timescale_in_milliseconds. The maximum live back off duration is 300 seconds. For example, a value of 20 means that the latest available content is 20 seconds delayed from the real live edge.
	liveBackoffInUnits?: null | float64 @go(LiveBackoffInUnits,*float64)

	// The relative to end sliding window. Applies to Live Streaming only. Use presentation_window_in_units to apply a sliding window of fragments to include in a playlist. The unit is defined by unit_timescale_in_milliseconds. For example, set presentation_window_in_units to 120 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds.
	presentationWindowInUnits?: null | float64 @go(PresentationWindowInUnits,*float64)

	// The absolute start time boundary. Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is defined by unit_timescale_in_milliseconds, so a start_in_units of 15 would be for 15 seconds. Use start_in_units and end_in_units to trim the fragments that will be in the playlist (manifest). For example, start_in_units set to 20 and end_in_units set to 60 using unit_timescale_in_milliseconds in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
	startInUnits?: null | float64 @go(StartInUnits,*float64)

	// Specified as the number of milliseconds in one unit timescale. For example, if you want to set a start_in_units at 30 seconds, you would use a value of 30 when using the unit_timescale_in_milliseconds in 1000. Or if you want to set start_in_units in 30 milliseconds, you would use a value of 30 when using the unit_timescale_in_milliseconds in 1. Applies timescale to start_in_units, start_timescale and presentation_window_in_timescale and live_backoff_in_timescale.
	unitTimescaleInMilliseconds?: null | float64 @go(UnitTimescaleInMilliseconds,*float64)
}

#ServicesAccountFilterPresentationTimeRangeObservation: {
	// The absolute end time boundary. Applies to Video on Demand (VoD).
	// For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is defined by unit_timescale_in_milliseconds, so an end_in_units of 180 would be for 3 minutes. Use start_in_units and end_in_units to trim the fragments that will be in the playlist (manifest). For example, start_in_units set to 20 and end_in_units set to 60 using unit_timescale_in_milliseconds in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
	endInUnits?: null | float64 @go(EndInUnits,*float64)

	// Indicates whether the end_in_units property must be present. If true, end_in_units must be specified or a bad request code is returned. Applies to Live Streaming only. Allowed values: false, true.
	forceEnd?: null | bool @go(ForceEnd,*bool)

	// The relative to end right edge. Applies to Live Streaming only.
	// This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit is defined by unit_timescale_in_milliseconds. The maximum live back off duration is 300 seconds. For example, a value of 20 means that the latest available content is 20 seconds delayed from the real live edge.
	liveBackoffInUnits?: null | float64 @go(LiveBackoffInUnits,*float64)

	// The relative to end sliding window. Applies to Live Streaming only. Use presentation_window_in_units to apply a sliding window of fragments to include in a playlist. The unit is defined by unit_timescale_in_milliseconds. For example, set presentation_window_in_units to 120 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds.
	presentationWindowInUnits?: null | float64 @go(PresentationWindowInUnits,*float64)

	// The absolute start time boundary. Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is defined by unit_timescale_in_milliseconds, so a start_in_units of 15 would be for 15 seconds. Use start_in_units and end_in_units to trim the fragments that will be in the playlist (manifest). For example, start_in_units set to 20 and end_in_units set to 60 using unit_timescale_in_milliseconds in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
	startInUnits?: null | float64 @go(StartInUnits,*float64)

	// Specified as the number of milliseconds in one unit timescale. For example, if you want to set a start_in_units at 30 seconds, you would use a value of 30 when using the unit_timescale_in_milliseconds in 1000. Or if you want to set start_in_units in 30 milliseconds, you would use a value of 30 when using the unit_timescale_in_milliseconds in 1. Applies timescale to start_in_units, start_timescale and presentation_window_in_timescale and live_backoff_in_timescale.
	unitTimescaleInMilliseconds?: null | float64 @go(UnitTimescaleInMilliseconds,*float64)
}

#ServicesAccountFilterPresentationTimeRangeParameters: {
	// The absolute end time boundary. Applies to Video on Demand (VoD).
	// For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is defined by unit_timescale_in_milliseconds, so an end_in_units of 180 would be for 3 minutes. Use start_in_units and end_in_units to trim the fragments that will be in the playlist (manifest). For example, start_in_units set to 20 and end_in_units set to 60 using unit_timescale_in_milliseconds in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
	// +kubebuilder:validation:Optional
	endInUnits?: null | float64 @go(EndInUnits,*float64)

	// Indicates whether the end_in_units property must be present. If true, end_in_units must be specified or a bad request code is returned. Applies to Live Streaming only. Allowed values: false, true.
	// +kubebuilder:validation:Optional
	forceEnd?: null | bool @go(ForceEnd,*bool)

	// The relative to end right edge. Applies to Live Streaming only.
	// This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit is defined by unit_timescale_in_milliseconds. The maximum live back off duration is 300 seconds. For example, a value of 20 means that the latest available content is 20 seconds delayed from the real live edge.
	// +kubebuilder:validation:Optional
	liveBackoffInUnits?: null | float64 @go(LiveBackoffInUnits,*float64)

	// The relative to end sliding window. Applies to Live Streaming only. Use presentation_window_in_units to apply a sliding window of fragments to include in a playlist. The unit is defined by unit_timescale_in_milliseconds. For example, set presentation_window_in_units to 120 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds.
	// +kubebuilder:validation:Optional
	presentationWindowInUnits?: null | float64 @go(PresentationWindowInUnits,*float64)

	// The absolute start time boundary. Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is defined by unit_timescale_in_milliseconds, so a start_in_units of 15 would be for 15 seconds. Use start_in_units and end_in_units to trim the fragments that will be in the playlist (manifest). For example, start_in_units set to 20 and end_in_units set to 60 using unit_timescale_in_milliseconds in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
	// +kubebuilder:validation:Optional
	startInUnits?: null | float64 @go(StartInUnits,*float64)

	// Specified as the number of milliseconds in one unit timescale. For example, if you want to set a start_in_units at 30 seconds, you would use a value of 30 when using the unit_timescale_in_milliseconds in 1000. Or if you want to set start_in_units in 30 milliseconds, you would use a value of 30 when using the unit_timescale_in_milliseconds in 1. Applies timescale to start_in_units, start_timescale and presentation_window_in_timescale and live_backoff_in_timescale.
	// +kubebuilder:validation:Optional
	unitTimescaleInMilliseconds?: null | float64 @go(UnitTimescaleInMilliseconds,*float64)
}

#ServicesAccountFilterTrackSelectionInitParameters: {
	// One or more selection blocks as defined above.
	condition?: [...#TrackSelectionConditionInitParameters] @go(Condition,[]TrackSelectionConditionInitParameters)
}

#ServicesAccountFilterTrackSelectionObservation: {
	// One or more selection blocks as defined above.
	condition?: [...#TrackSelectionConditionObservation] @go(Condition,[]TrackSelectionConditionObservation)
}

#ServicesAccountFilterTrackSelectionParameters: {
	// One or more selection blocks as defined above.
	// +kubebuilder:validation:Optional
	condition: [...#TrackSelectionConditionParameters] @go(Condition,[]TrackSelectionConditionParameters)
}

#TrackSelectionConditionInitParameters: {
	// The condition operation to test a track property against. Supported values are Equal and NotEqual.
	operation?: null | string @go(Operation,*string)

	// The track property to compare. Supported values are Bitrate, FourCC, Language, Name and Type. Check documentation for more details.
	property?: null | string @go(Property,*string)

	// The track property value to match or not match.
	value?: null | string @go(Value,*string)
}

#TrackSelectionConditionObservation: {
	// The condition operation to test a track property against. Supported values are Equal and NotEqual.
	operation?: null | string @go(Operation,*string)

	// The track property to compare. Supported values are Bitrate, FourCC, Language, Name and Type. Check documentation for more details.
	property?: null | string @go(Property,*string)

	// The track property value to match or not match.
	value?: null | string @go(Value,*string)
}

#TrackSelectionConditionParameters: {
	// The condition operation to test a track property against. Supported values are Equal and NotEqual.
	// +kubebuilder:validation:Optional
	operation?: null | string @go(Operation,*string)

	// The track property to compare. Supported values are Bitrate, FourCC, Language, Name and Type. Check documentation for more details.
	// +kubebuilder:validation:Optional
	property?: null | string @go(Property,*string)

	// The track property value to match or not match.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

// ServicesAccountFilterSpec defines the desired state of ServicesAccountFilter
#ServicesAccountFilterSpec: {
	forProvider: #ServicesAccountFilterParameters @go(ForProvider)

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
	initProvider?: #ServicesAccountFilterInitParameters @go(InitProvider)
}

// ServicesAccountFilterStatus defines the observed state of ServicesAccountFilter.
#ServicesAccountFilterStatus: {
	atProvider?: #ServicesAccountFilterObservation @go(AtProvider)
}

// ServicesAccountFilter is the Schema for the ServicesAccountFilters API. Manages a Media Services Account Filter.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ServicesAccountFilter: {
	spec:    #ServicesAccountFilterSpec   @go(Spec)
	status?: #ServicesAccountFilterStatus @go(Status)
}

// ServicesAccountFilterList contains a list of ServicesAccountFilters
#ServicesAccountFilterList: {
	items: [...#ServicesAccountFilter] @go(Items,[]ServicesAccountFilter)
}
