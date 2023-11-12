// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/connect/v1beta1

package v1beta1

#LambdaFunctionAssociationObservation: {
	// The Amazon Connect instance ID and Lambda Function ARN separated by a comma (,).
	id?: null | string @go(ID,*string)
}

#LambdaFunctionAssociationParameters: {
	// Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/lambda/v1beta1.Function
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	functionArn?: null | string @go(FunctionArn,*string)

	// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/connect/v1beta1.Instance
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	instanceId?: null | string @go(InstanceID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// LambdaFunctionAssociationSpec defines the desired state of LambdaFunctionAssociation
#LambdaFunctionAssociationSpec: {
	forProvider: #LambdaFunctionAssociationParameters @go(ForProvider)
}

// LambdaFunctionAssociationStatus defines the observed state of LambdaFunctionAssociation.
#LambdaFunctionAssociationStatus: {
	atProvider?: #LambdaFunctionAssociationObservation @go(AtProvider)
}

// LambdaFunctionAssociation is the Schema for the LambdaFunctionAssociations API. Provides details about a specific Connect Lambda Function Association.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#LambdaFunctionAssociation: {
	spec:    #LambdaFunctionAssociationSpec   @go(Spec)
	status?: #LambdaFunctionAssociationStatus @go(Status)
}

// LambdaFunctionAssociationList contains a list of LambdaFunctionAssociations
#LambdaFunctionAssociationList: {
	items: [...#LambdaFunctionAssociation] @go(Items,[]LambdaFunctionAssociation)
}
