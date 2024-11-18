// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/amp/v1beta1

package v1beta1

#RuleGroupNamespaceObservation: {
	id?: null | string @go(ID,*string)
}

#RuleGroupNamespaceParameters: {
	// the rule group namespace data that you want to be applied. See more in AWS Docs.
	// +kubebuilder:validation:Required
	data?: null | string @go(Data,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// ID of the prometheus workspace the rule group namespace should be linked to
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/amp/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	workspaceId?: null | string @go(WorkspaceID,*string)
}

// RuleGroupNamespaceSpec defines the desired state of RuleGroupNamespace
#RuleGroupNamespaceSpec: {
	forProvider: #RuleGroupNamespaceParameters @go(ForProvider)
}

// RuleGroupNamespaceStatus defines the observed state of RuleGroupNamespace.
#RuleGroupNamespaceStatus: {
	atProvider?: #RuleGroupNamespaceObservation @go(AtProvider)
}

// RuleGroupNamespace is the Schema for the RuleGroupNamespaces API. Manages an Amazon Managed Service for Prometheus (AMP) Rule Group Namespace
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RuleGroupNamespace: {
	spec:    #RuleGroupNamespaceSpec   @go(Spec)
	status?: #RuleGroupNamespaceStatus @go(Status)
}

// RuleGroupNamespaceList contains a list of RuleGroupNamespaces
#RuleGroupNamespaceList: {
	items: [...#RuleGroupNamespace] @go(Items,[]RuleGroupNamespace)
}
