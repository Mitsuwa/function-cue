// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigateway/v1beta1

package v1beta1

#AccountObservation: {
	id?: null | string @go(ID,*string)

	// Account-Level throttle settings. See exported fields below.
	throttleSettings?: [...#ThrottleSettingsObservation] @go(ThrottleSettings,[]ThrottleSettingsObservation)
}

#AccountParameters: {
	// ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more in AWS Docs. Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	cloudwatchRoleArn?: null | string @go(CloudwatchRoleArn,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#ThrottleSettingsObservation: {
	// Absolute maximum number of times API Gateway allows the API to be called per second (RPS).
	burstLimit?: null | float64 @go(BurstLimit,*float64)

	// Number of times API Gateway allows the API to be called per second on average (RPS).
	rateLimit?: null | float64 @go(RateLimit,*float64)
}

#ThrottleSettingsParameters: {
}

// AccountSpec defines the desired state of Account
#AccountSpec: {
	forProvider: #AccountParameters @go(ForProvider)
}

// AccountStatus defines the observed state of Account.
#AccountStatus: {
	atProvider?: #AccountObservation @go(AtProvider)
}

// Account is the Schema for the Accounts API. Provides a settings of an API Gateway Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Account: {
	spec:    #AccountSpec   @go(Spec)
	status?: #AccountStatus @go(Status)
}

// AccountList contains a list of Accounts
#AccountList: {
	items: [...#Account] @go(Items,[]Account)
}
