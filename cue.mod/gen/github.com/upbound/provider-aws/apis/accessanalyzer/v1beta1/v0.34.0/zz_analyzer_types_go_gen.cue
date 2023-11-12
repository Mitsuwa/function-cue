// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/accessanalyzer/v1beta1

package v1beta1

#AnalyzerObservation: {
	// ARN of the Analyzer.
	arn?: null | string @go(Arn,*string)

	// Analyzer name.
	id?: null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Type of Analyzer. Valid values are ACCOUNT or ORGANIZATION. Defaults to ACCOUNT.
	type?: null | string @go(Type,*string)
}

#AnalyzerParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Type of Analyzer. Valid values are ACCOUNT or ORGANIZATION. Defaults to ACCOUNT.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// AnalyzerSpec defines the desired state of Analyzer
#AnalyzerSpec: {
	forProvider: #AnalyzerParameters @go(ForProvider)
}

// AnalyzerStatus defines the observed state of Analyzer.
#AnalyzerStatus: {
	atProvider?: #AnalyzerObservation @go(AtProvider)
}

// Analyzer is the Schema for the Analyzers API. Manages an Access Analyzer Analyzer
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Analyzer: {
	spec:    #AnalyzerSpec   @go(Spec)
	status?: #AnalyzerStatus @go(Status)
}

// AnalyzerList contains a list of Analyzers
#AnalyzerList: {
	items: [...#Analyzer] @go(Items,[]Analyzer)
}
