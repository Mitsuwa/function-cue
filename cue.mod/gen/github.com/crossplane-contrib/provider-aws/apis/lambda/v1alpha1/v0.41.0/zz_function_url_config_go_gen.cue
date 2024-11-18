// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/lambda/v1alpha1

package v1alpha1

// FunctionURLConfigParameters defines the desired state of FunctionURLConfig
#FunctionURLConfigParameters: {
	// Region is which region the FunctionURLConfig will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The type of authentication that your function URL uses. Set to AWS_IAM if
	// you want to restrict access to authenticated IAM users only. Set to NONE
	// if you want to bypass IAM authentication to create a public endpoint. For
	// more information, see Security and auth model for Lambda function URLs (https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html).
	// +kubebuilder:validation:Required
	authType?: null | string @go(AuthType,*string)

	// The cross-origin resource sharing (CORS) (https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
	// settings for your function URL.
	cors?: null | #CORS @go(CORS,*CORS)

	// The alias name.
	qualifier?: null | string @go(Qualifier,*string)

	#CustomFunctionURLConfigParameters
}

// FunctionURLConfigSpec defines the desired state of FunctionURLConfig
#FunctionURLConfigSpec: {
	forProvider: #FunctionURLConfigParameters @go(ForProvider)
}

// FunctionURLConfigObservation defines the observed state of FunctionURLConfig
#FunctionURLConfigObservation: {
	// When the function URL was created, in ISO-8601 format (https://www.w3.org/TR/NOTE-datetime)
	// (YYYY-MM-DDThh:mm:ss.sTZD).
	creationTime?: null | string @go(CreationTime,*string)

	// The Amazon Resource Name (ARN) of your function.
	functionARN?: null | string @go(FunctionARN,*string)

	// The HTTP URL endpoint for your function.
	functionURL?: null | string @go(FunctionURL,*string)
}

// FunctionURLConfigStatus defines the observed state of FunctionURLConfig.
#FunctionURLConfigStatus: {
	atProvider?: #FunctionURLConfigObservation @go(AtProvider)
}

// FunctionURLConfig is the Schema for the FunctionURLConfigs API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#FunctionURLConfig: {
	spec:    #FunctionURLConfigSpec   @go(Spec)
	status?: #FunctionURLConfigStatus @go(Status)
}

// FunctionURLConfigList contains a list of FunctionURLConfigs
#FunctionURLConfigList: {
	items: [...#FunctionURLConfig] @go(Items,[]FunctionURLConfig)
}
