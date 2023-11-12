// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/wafregional/v1beta1

package v1beta1

#ActionObservation: {
}

#ActionParameters: {
	// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for action are ALLOW, BLOCK or COUNT. Valid values for override_action are COUNT and NONE.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#DefaultActionObservation: {
}

#DefaultActionParameters: {
	// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a ruleE.g., ALLOW, BLOCK or COUNT
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#LoggingConfigurationObservation: {
}

#LoggingConfigurationParameters: {
	// Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/firehose/v1beta1.DeliveryStream
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",false)
	// +kubebuilder:validation:Optional
	logDestination?: null | string @go(LogDestination,*string)

	// Configuration block containing parts of the request that you want redacted from the logs. Detailed below.
	// +kubebuilder:validation:Optional
	redactedFields?: [...#RedactedFieldsParameters] @go(RedactedFields,[]RedactedFieldsParameters)
}

#OverrideActionObservation: {
}

#OverrideActionParameters: {
	// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for action are ALLOW, BLOCK or COUNT. Valid values for override_action are COUNT and NONE.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#RedactedFieldsFieldToMatchObservation: {
}

#RedactedFieldsFieldToMatchParameters: {
	// When the value of type is HEADER, enter the name of the header that you want the WAF to search, for example, User-Agent or Referer. If the value of type is any other value, omit data.
	// +kubebuilder:validation:Optional
	data?: null | string @go(Data,*string)

	// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for action are ALLOW, BLOCK or COUNT. Valid values for override_action are COUNT and NONE.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#RedactedFieldsObservation: {
}

#RedactedFieldsParameters: {
	// Set of configuration blocks for fields to redact. Detailed below.
	// +kubebuilder:validation:Required
	fieldToMatch: [...#RedactedFieldsFieldToMatchParameters] @go(FieldToMatch,[]RedactedFieldsFieldToMatchParameters)
}

#WebACLObservation: {
	// Amazon Resource Name (ARN) of the WAF Regional WebACL.
	arn?: null | string @go(Arn,*string)

	// The ID of the WAF Regional WebACL.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#WebACLParameters: {
	// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
	// +kubebuilder:validation:Required
	defaultAction: [...#DefaultActionParameters] @go(DefaultAction,[]DefaultActionParameters)

	// Configuration block to enable WAF logging. Detailed below.
	// +kubebuilder:validation:Optional
	loggingConfiguration?: [...#LoggingConfigurationParameters] @go(LoggingConfiguration,[]LoggingConfigurationParameters)

	// The name or description for the Amazon CloudWatch metric of this web ACL.
	// +kubebuilder:validation:Required
	metricName?: null | string @go(MetricName,*string)

	// The name or description of the web ACL.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Set of configuration blocks containing rules for the web ACL. Detailed below.
	// +kubebuilder:validation:Optional
	rule?: [...#WebACLRuleParameters] @go(Rule,[]WebACLRuleParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WebACLRuleObservation: {
}

#WebACLRuleParameters: {
	// Configuration block of the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Not used if type is GROUP. Detailed below.
	// +kubebuilder:validation:Optional
	action?: [...#ActionParameters] @go(Action,[]ActionParameters)

	// Configuration block of the override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Only used if type is GROUP. Detailed below.
	// +kubebuilder:validation:Optional
	overrideAction?: [...#OverrideActionParameters] @go(OverrideAction,[]OverrideActionParameters)

	// Specifies the order in which the rules in a WebACL are evaluated.
	// Rules with a lower value are evaluated before rules with a higher value.
	// +kubebuilder:validation:Required
	priority?: null | float64 @go(Priority,*float64)

	// ID of the associated WAF (Regional) rule (e.g., aws_wafregional_rule). WAF (Global) rules cannot be used.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/wafregional/v1beta1.Rule
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	ruleId?: null | string @go(RuleID,*string)

	// The rule type, either REGULAR, as defined by Rule, RATE_BASED, as defined by RateBasedRule, or GROUP, as defined by RuleGroup. The default is REGULAR. If you add a RATE_BASED rule, you need to set type as RATE_BASED. If you add a GROUP rule, you need to set type as GROUP.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// WebACLSpec defines the desired state of WebACL
#WebACLSpec: {
	forProvider: #WebACLParameters @go(ForProvider)
}

// WebACLStatus defines the observed state of WebACL.
#WebACLStatus: {
	atProvider?: #WebACLObservation @go(AtProvider)
}

// WebACL is the Schema for the WebACLs API. Provides a AWS WAF Regional web access control group (ACL) resource for use with ALB.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#WebACL: {
	spec:    #WebACLSpec   @go(Spec)
	status?: #WebACLStatus @go(Status)
}

// WebACLList contains a list of WebACLs
#WebACLList: {
	items: [...#WebACL] @go(Items,[]WebACL)
}
