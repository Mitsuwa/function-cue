// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/lambda/v1beta1

package v1beta1

#InvocationObservation: {
	id?: null | string @go(ID,*string)

	// String result of the lambda function invocation.
	result?: null | string @go(Result,*string)
}

#InvocationParameters: {
	// Name of the lambda function.
	// +crossplane:generate:reference:type=Function
	// +kubebuilder:validation:Optional
	functionName?: null | string @go(FunctionName,*string)

	// JSON payload to the lambda function.
	// +kubebuilder:validation:Required
	input?: null | string @go(Input,*string)

	// Qualifier (i.e., version) of the lambda function. Defaults to $LATEST.
	// +kubebuilder:validation:Optional
	qualifier?: null | string @go(Qualifier,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
	// +kubebuilder:validation:Optional
	triggers?: {[string]: null | string} @go(Triggers,map[string]*string)
}

// InvocationSpec defines the desired state of Invocation
#InvocationSpec: {
	forProvider: #InvocationParameters @go(ForProvider)
}

// InvocationStatus defines the observed state of Invocation.
#InvocationStatus: {
	atProvider?: #InvocationObservation @go(AtProvider)
}

// Invocation is the Schema for the Invocations API. Invoke AWS Lambda Function
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Invocation: {
	spec:    #InvocationSpec   @go(Spec)
	status?: #InvocationStatus @go(Status)
}

// InvocationList contains a list of Invocations
#InvocationList: {
	items: [...#Invocation] @go(Items,[]Invocation)
}
