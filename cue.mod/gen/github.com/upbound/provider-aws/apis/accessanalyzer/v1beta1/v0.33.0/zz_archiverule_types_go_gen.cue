// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/accessanalyzer/v1beta1

package v1beta1

#ArchiveRuleObservation: {
	// Resource ID in the format: analyzer_name/rule_name.
	id?: null | string @go(ID,*string)
}

#ArchiveRuleParameters: {
	// Analyzer name.
	// +kubebuilder:validation:Required
	analyzerName?: null | string @go(AnalyzerName,*string)

	// Filter criteria for the archive rule. See Filter for more details.
	// +kubebuilder:validation:Required
	filter: [...#FilterParameters] @go(Filter,[]FilterParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#FilterObservation: {
}

#FilterParameters: {
	// Contains comparator.
	// +kubebuilder:validation:Optional
	contains?: [...null | string] @go(Contains,[]*string)

	// Filter criteria.
	// +kubebuilder:validation:Required
	criteria?: null | string @go(Criteria,*string)

	// Equals comparator.
	// +kubebuilder:validation:Optional
	eq?: [...null | string] @go(Eq,[]*string)

	// Boolean comparator.
	// +kubebuilder:validation:Optional
	exists?: null | string @go(Exists,*string)

	// Not Equals comparator.
	// +kubebuilder:validation:Optional
	neq?: [...null | string] @go(Neq,[]*string)
}

// ArchiveRuleSpec defines the desired state of ArchiveRule
#ArchiveRuleSpec: {
	forProvider: #ArchiveRuleParameters @go(ForProvider)
}

// ArchiveRuleStatus defines the observed state of ArchiveRule.
#ArchiveRuleStatus: {
	atProvider?: #ArchiveRuleObservation @go(AtProvider)
}

// ArchiveRule is the Schema for the ArchiveRules API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ArchiveRule: {
	spec:    #ArchiveRuleSpec   @go(Spec)
	status?: #ArchiveRuleStatus @go(Status)
}

// ArchiveRuleList contains a list of ArchiveRules
#ArchiveRuleList: {
	items: [...#ArchiveRule] @go(Items,[]ArchiveRule)
}
