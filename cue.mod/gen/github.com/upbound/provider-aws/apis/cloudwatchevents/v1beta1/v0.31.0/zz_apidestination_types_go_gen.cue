// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cloudwatchevents/v1beta1

package v1beta1

#APIDestinationObservation: {
	// The Amazon Resource Name (ARN) of the event API Destination.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)
}

#APIDestinationParameters: {
	// ARN of the EventBridge Connection to use for the API Destination.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cloudwatchevents/v1beta1.Connection
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	connectionArn?: null | string @go(ConnectionArn,*string)

	// The description of the new API Destination. Maximum of 512 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Select the HTTP method used for the invocation endpoint, such as GET, POST, PUT, etc.
	// +kubebuilder:validation:Required
	httpMethod?: null | string @go(HTTPMethod,*string)

	// URL endpoint to invoke as a target. This could be a valid endpoint generated by a partner service. You can include "*" as path parameters wildcards to be set from the Target HttpParameters.
	// +kubebuilder:validation:Required
	invocationEndpoint?: null | string @go(InvocationEndpoint,*string)

	// Enter the maximum number of invocations per second to allow for this destination. Enter a value greater than 0 (default 300).
	// +kubebuilder:validation:Optional
	invocationRateLimitPerSecond?: null | float64 @go(InvocationRateLimitPerSecond,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// APIDestinationSpec defines the desired state of APIDestination
#APIDestinationSpec: {
	forProvider: #APIDestinationParameters @go(ForProvider)
}

// APIDestinationStatus defines the observed state of APIDestination.
#APIDestinationStatus: {
	atProvider?: #APIDestinationObservation @go(AtProvider)
}

// APIDestination is the Schema for the APIDestinations API. Provides an EventBridge event API Destination resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#APIDestination: {
	spec:    #APIDestinationSpec   @go(Spec)
	status?: #APIDestinationStatus @go(Status)
}

// APIDestinationList contains a list of APIDestinations
#APIDestinationList: {
	items: [...#APIDestination] @go(Items,[]APIDestination)
}
