// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/macie2/v1beta1

package v1beta1

#CriterionObservation: {
}

#CriterionParameters: {
	// The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
	// +kubebuilder:validation:Optional
	eq?: [...null | string] @go(Eq,[]*string)

	// The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.
	// +kubebuilder:validation:Optional
	eqExactMatch?: [...null | string] @go(EqExactMatch,[]*string)

	// The name of the field to be evaluated.
	// +kubebuilder:validation:Required
	field?: null | string @go(Field,*string)

	// The value for the property is greater than the specified value.
	// +kubebuilder:validation:Optional
	gt?: null | string @go(Gt,*string)

	// The value for the property is greater than or equal to the specified value.
	// +kubebuilder:validation:Optional
	gte?: null | string @go(Gte,*string)

	// The value for the property is less than the specified value.
	// +kubebuilder:validation:Optional
	lt?: null | string @go(Lt,*string)

	// The value for the property is less than or equal to the specified value.
	// +kubebuilder:validation:Optional
	lte?: null | string @go(Lte,*string)

	// The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
	// +kubebuilder:validation:Optional
	neq?: [...null | string] @go(Neq,[]*string)
}

#FindingCriteriaObservation: {
}

#FindingCriteriaParameters: {
	// A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)
	// +kubebuilder:validation:Optional
	criterion?: [...#CriterionParameters] @go(Criterion,[]CriterionParameters)
}

#FindingsFilterObservation: {
	// The Amazon Resource Name (ARN) of the Findings Filter.
	arn?: null | string @go(Arn,*string)

	// The unique identifier (ID) of the macie Findings Filter.
	id?: null | string @go(ID,*string)
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#FindingsFilterParameters: {
	// The action to perform on findings that meet the filter criteria (finding_criteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.
	// +kubebuilder:validation:Required
	action?: null | string @go(Action,*string)

	// A custom description of the filter. The description can contain as many as 512 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The criteria to use to filter findings.
	// +kubebuilder:validation:Required
	findingCriteria: [...#FindingCriteriaParameters] @go(FindingCriteria,[]FindingCriteriaParameters)

	// A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. Conflicts with name_prefix.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
	// +kubebuilder:validation:Optional
	position?: null | float64 @go(Position,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// FindingsFilterSpec defines the desired state of FindingsFilter
#FindingsFilterSpec: {
	forProvider: #FindingsFilterParameters @go(ForProvider)
}

// FindingsFilterStatus defines the observed state of FindingsFilter.
#FindingsFilterStatus: {
	atProvider?: #FindingsFilterObservation @go(AtProvider)
}

// FindingsFilter is the Schema for the FindingsFilters API. Provides a resource to manage an Amazon Macie Findings Filter.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#FindingsFilter: {
	spec:    #FindingsFilterSpec   @go(Spec)
	status?: #FindingsFilterStatus @go(Status)
}

// FindingsFilterList contains a list of FindingsFilters
#FindingsFilterList: {
	items: [...#FindingsFilter] @go(Items,[]FindingsFilter)
}
