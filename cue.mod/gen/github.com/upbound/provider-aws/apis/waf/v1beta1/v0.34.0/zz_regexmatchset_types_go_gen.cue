// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/waf/v1beta1

package v1beta1

#RegexMatchSetObservation: {
	// Amazon Resource Name (ARN)
	arn?: null | string @go(Arn,*string)

	// The ID of the WAF Regex Match Set.
	id?: null | string @go(ID,*string)

	// The name or description of the Regex Match Set.
	name?: null | string @go(Name,*string)

	// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
	regexMatchTuple?: [...#RegexMatchTupleObservation] @go(RegexMatchTuple,[]RegexMatchTupleObservation)
}

#RegexMatchSetParameters: {
	// The name or description of the Regex Match Set.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
	// +kubebuilder:validation:Optional
	regexMatchTuple?: [...#RegexMatchTupleParameters] @go(RegexMatchTuple,[]RegexMatchTupleParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#RegexMatchTupleFieldToMatchObservation: {
	// When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referer.
	// If type is any other value, omit this field.
	data?: null | string @go(Data,*string)

	// The part of the web request that you want AWS WAF to search for a specified string.
	// e.g., HEADER, METHOD or BODY.
	// See docs
	// for all supported values.
	type?: null | string @go(Type,*string)
}

#RegexMatchTupleFieldToMatchParameters: {
	// When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referer.
	// If type is any other value, omit this field.
	// +kubebuilder:validation:Optional
	data?: null | string @go(Data,*string)

	// The part of the web request that you want AWS WAF to search for a specified string.
	// e.g., HEADER, METHOD or BODY.
	// See docs
	// for all supported values.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#RegexMatchTupleObservation: {
	// The part of a web request that you want to search, such as a specified header or a query string.
	fieldToMatch?: [...#RegexMatchTupleFieldToMatchObservation] @go(FieldToMatch,[]RegexMatchTupleFieldToMatchObservation)

	// The ID of a Regex Pattern Set.
	regexPatternSetId?: null | string @go(RegexPatternSetID,*string)

	// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
	// e.g., CMD_LINE, HTML_ENTITY_DECODE or NONE.
	// See docs
	// for all supported values.
	textTransformation?: null | string @go(TextTransformation,*string)
}

#RegexMatchTupleParameters: {
	// The part of a web request that you want to search, such as a specified header or a query string.
	// +kubebuilder:validation:Required
	fieldToMatch: [...#RegexMatchTupleFieldToMatchParameters] @go(FieldToMatch,[]RegexMatchTupleFieldToMatchParameters)

	// The ID of a Regex Pattern Set.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/waf/v1beta1.RegexPatternSet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	regexPatternSetId?: null | string @go(RegexPatternSetID,*string)

	// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
	// e.g., CMD_LINE, HTML_ENTITY_DECODE or NONE.
	// See docs
	// for all supported values.
	// +kubebuilder:validation:Required
	textTransformation?: null | string @go(TextTransformation,*string)
}

// RegexMatchSetSpec defines the desired state of RegexMatchSet
#RegexMatchSetSpec: {
	forProvider: #RegexMatchSetParameters @go(ForProvider)
}

// RegexMatchSetStatus defines the observed state of RegexMatchSet.
#RegexMatchSetStatus: {
	atProvider?: #RegexMatchSetObservation @go(AtProvider)
}

// RegexMatchSet is the Schema for the RegexMatchSets API. Provides a AWS WAF Regex Match Set resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RegexMatchSet: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #RegexMatchSetSpec   @go(Spec)
	status?: #RegexMatchSetStatus @go(Status)
}

// RegexMatchSetList contains a list of RegexMatchSets
#RegexMatchSetList: {
	items: [...#RegexMatchSet] @go(Items,[]RegexMatchSet)
}
