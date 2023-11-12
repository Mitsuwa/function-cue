// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#OutputFunctionInitParameters: {
	// The maximum number of events in each batch that's sent to the function. Defaults to 100.
	batchMaxCount?: null | float64 @go(BatchMaxCount,*float64)

	// The maximum batch size in bytes that's sent to the function. Defaults to 262144 (256 kB).
	batchMaxInBytes?: null | float64 @go(BatchMaxInBytes,*float64)

	// The name of the function in the Function App.
	functionName?: null | string @go(FunctionName,*string)
}

#OutputFunctionObservation: {
	// The maximum number of events in each batch that's sent to the function. Defaults to 100.
	batchMaxCount?: null | float64 @go(BatchMaxCount,*float64)

	// The maximum batch size in bytes that's sent to the function. Defaults to 262144 (256 kB).
	batchMaxInBytes?: null | float64 @go(BatchMaxInBytes,*float64)

	// The name of the Function App.
	functionApp?: null | string @go(FunctionApp,*string)

	// The name of the function in the Function App.
	functionName?: null | string @go(FunctionName,*string)

	// The ID of the Stream Analytics Output Function.
	id?: null | string @go(ID,*string)

	// The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)
}

#OutputFunctionParameters: {
	// The maximum number of events in each batch that's sent to the function. Defaults to 100.
	// +kubebuilder:validation:Optional
	batchMaxCount?: null | float64 @go(BatchMaxCount,*float64)

	// The maximum batch size in bytes that's sent to the function. Defaults to 262144 (256 kB).
	// +kubebuilder:validation:Optional
	batchMaxInBytes?: null | float64 @go(BatchMaxInBytes,*float64)

	// The name of the Function App.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/web/v1beta1.FunctionApp
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",false)
	// +kubebuilder:validation:Optional
	functionApp?: null | string @go(FunctionApp,*string)

	// The name of the function in the Function App.
	// +kubebuilder:validation:Optional
	functionName?: null | string @go(FunctionName,*string)

	// The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/streamanalytics/v1beta1.Job
	// +kubebuilder:validation:Optional
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)
}

// OutputFunctionSpec defines the desired state of OutputFunction
#OutputFunctionSpec: {
	forProvider: #OutputFunctionParameters @go(ForProvider)

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
	initProvider?: #OutputFunctionInitParameters @go(InitProvider)
}

// OutputFunctionStatus defines the observed state of OutputFunction.
#OutputFunctionStatus: {
	atProvider?: #OutputFunctionObservation @go(AtProvider)
}

// OutputFunction is the Schema for the OutputFunctions API. Manages a Stream Analytics Output Function.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#OutputFunction: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.apiKeySecretRef)",message="spec.forProvider.apiKeySecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.functionName) || (has(self.initProvider) && has(self.initProvider.functionName))",message="spec.forProvider.functionName is a required parameter"
	spec:    #OutputFunctionSpec   @go(Spec)
	status?: #OutputFunctionStatus @go(Status)
}

// OutputFunctionList contains a list of OutputFunctions
#OutputFunctionList: {
	items: [...#OutputFunction] @go(Items,[]OutputFunction)
}
