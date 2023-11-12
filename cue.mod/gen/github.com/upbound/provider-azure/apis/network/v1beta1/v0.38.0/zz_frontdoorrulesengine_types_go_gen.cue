// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ActionInitParameters: {
	// A request_header block as defined below.
	requestHeader?: [...#RequestHeaderInitParameters] @go(RequestHeader,[]RequestHeaderInitParameters)

	// A response_header block as defined below.
	responseHeader?: [...#ResponseHeaderInitParameters] @go(ResponseHeader,[]ResponseHeaderInitParameters)
}

#ActionObservation: {
	// A request_header block as defined below.
	requestHeader?: [...#RequestHeaderObservation] @go(RequestHeader,[]RequestHeaderObservation)

	// A response_header block as defined below.
	responseHeader?: [...#ResponseHeaderObservation] @go(ResponseHeader,[]ResponseHeaderObservation)
}

#ActionParameters: {
	// A request_header block as defined below.
	// +kubebuilder:validation:Optional
	requestHeader?: [...#RequestHeaderParameters] @go(RequestHeader,[]RequestHeaderParameters)

	// A response_header block as defined below.
	// +kubebuilder:validation:Optional
	responseHeader?: [...#ResponseHeaderParameters] @go(ResponseHeader,[]ResponseHeaderParameters)
}

#FrontdoorRulesEngineInitParameters: {
	// Whether this Rules engine configuration is enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// A rule block as defined below.
	rule?: [...#FrontdoorRulesEngineRuleInitParameters] @go(Rule,[]FrontdoorRulesEngineRuleInitParameters)
}

#FrontdoorRulesEngineObservation: {
	// Whether this Rules engine configuration is enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The name of the Front Door instance. Changing this forces a new resource to be created.
	frontdoorName?: null | string @go(FrontdoorName,*string)
	id?:            null | string @go(ID,*string)
	location?:      null | string @go(Location,*string)

	// The name of the resource group. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A rule block as defined below.
	rule?: [...#FrontdoorRulesEngineRuleObservation] @go(Rule,[]FrontdoorRulesEngineRuleObservation)
}

#FrontdoorRulesEngineParameters: {
	// Whether this Rules engine configuration is enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The name of the Front Door instance. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=FrontDoor
	// +kubebuilder:validation:Optional
	frontdoorName?: null | string @go(FrontdoorName,*string)

	// The name of the resource group. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A rule block as defined below.
	// +kubebuilder:validation:Optional
	rule?: [...#FrontdoorRulesEngineRuleParameters] @go(Rule,[]FrontdoorRulesEngineRuleParameters)
}

#FrontdoorRulesEngineRuleInitParameters: {
	// An action block as defined below.
	action?: [...#ActionInitParameters] @go(Action,[]ActionInitParameters)

	// One or more match_condition block as defined below.
	matchCondition?: [...#RuleMatchConditionInitParameters] @go(MatchCondition,[]RuleMatchConditionInitParameters)

	// The name of the rule.
	name?: null | string @go(Name,*string)

	// Priority of the rule, must be unique per rules engine definition.
	priority?: null | float64 @go(Priority,*float64)
}

#FrontdoorRulesEngineRuleObservation: {
	// An action block as defined below.
	action?: [...#ActionObservation] @go(Action,[]ActionObservation)

	// One or more match_condition block as defined below.
	matchCondition?: [...#RuleMatchConditionObservation] @go(MatchCondition,[]RuleMatchConditionObservation)

	// The name of the rule.
	name?: null | string @go(Name,*string)

	// Priority of the rule, must be unique per rules engine definition.
	priority?: null | float64 @go(Priority,*float64)
}

#FrontdoorRulesEngineRuleParameters: {
	// An action block as defined below.
	// +kubebuilder:validation:Optional
	action?: [...#ActionParameters] @go(Action,[]ActionParameters)

	// One or more match_condition block as defined below.
	// +kubebuilder:validation:Optional
	matchCondition?: [...#RuleMatchConditionParameters] @go(MatchCondition,[]RuleMatchConditionParameters)

	// The name of the rule.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Priority of the rule, must be unique per rules engine definition.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)
}

#RequestHeaderInitParameters: {
	// can be set to Overwrite, Append or Delete.
	headerActionType?: null | string @go(HeaderActionType,*string)

	// header name (string).
	headerName?: null | string @go(HeaderName,*string)

	// value name (string).
	value?: null | string @go(Value,*string)
}

#RequestHeaderObservation: {
	// can be set to Overwrite, Append or Delete.
	headerActionType?: null | string @go(HeaderActionType,*string)

	// header name (string).
	headerName?: null | string @go(HeaderName,*string)

	// value name (string).
	value?: null | string @go(Value,*string)
}

#RequestHeaderParameters: {
	// can be set to Overwrite, Append or Delete.
	// +kubebuilder:validation:Optional
	headerActionType?: null | string @go(HeaderActionType,*string)

	// header name (string).
	// +kubebuilder:validation:Optional
	headerName?: null | string @go(HeaderName,*string)

	// value name (string).
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#ResponseHeaderInitParameters: {
	// can be set to Overwrite, Append or Delete.
	headerActionType?: null | string @go(HeaderActionType,*string)

	// header name (string).
	headerName?: null | string @go(HeaderName,*string)

	// value name (string).
	value?: null | string @go(Value,*string)
}

#ResponseHeaderObservation: {
	// can be set to Overwrite, Append or Delete.
	headerActionType?: null | string @go(HeaderActionType,*string)

	// header name (string).
	headerName?: null | string @go(HeaderName,*string)

	// value name (string).
	value?: null | string @go(Value,*string)
}

#ResponseHeaderParameters: {
	// can be set to Overwrite, Append or Delete.
	// +kubebuilder:validation:Optional
	headerActionType?: null | string @go(HeaderActionType,*string)

	// header name (string).
	// +kubebuilder:validation:Optional
	headerName?: null | string @go(HeaderName,*string)

	// value name (string).
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#RuleMatchConditionInitParameters: {
	// can be set to true or false to negate the given condition. Defaults to true.
	negateCondition?: null | bool @go(NegateCondition,*bool)

	// can be set to Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith or EndsWith
	operator?: null | string @go(Operator,*string)

	// match against a specific key when variable is set to PostArgs or RequestHeader. It cannot be used with QueryString and RequestMethod.
	selector?: null | string @go(Selector,*string)

	// can be set to one or more values out of Lowercase, RemoveNulls, Trim, Uppercase, UrlDecode and UrlEncode
	transform?: [...null | string] @go(Transform,[]*string)

	// value name (string).
	value?: [...null | string] @go(Value,[]*string)

	// can be set to IsMobile, RemoteAddr, RequestMethod, QueryString, PostArgs, RequestURI, RequestPath, RequestFilename, RequestFilenameExtension,RequestHeader,RequestBody or RequestScheme.
	variable?: null | string @go(Variable,*string)
}

#RuleMatchConditionObservation: {
	// can be set to true or false to negate the given condition. Defaults to true.
	negateCondition?: null | bool @go(NegateCondition,*bool)

	// can be set to Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith or EndsWith
	operator?: null | string @go(Operator,*string)

	// match against a specific key when variable is set to PostArgs or RequestHeader. It cannot be used with QueryString and RequestMethod.
	selector?: null | string @go(Selector,*string)

	// can be set to one or more values out of Lowercase, RemoveNulls, Trim, Uppercase, UrlDecode and UrlEncode
	transform?: [...null | string] @go(Transform,[]*string)

	// value name (string).
	value?: [...null | string] @go(Value,[]*string)

	// can be set to IsMobile, RemoteAddr, RequestMethod, QueryString, PostArgs, RequestURI, RequestPath, RequestFilename, RequestFilenameExtension,RequestHeader,RequestBody or RequestScheme.
	variable?: null | string @go(Variable,*string)
}

#RuleMatchConditionParameters: {
	// can be set to true or false to negate the given condition. Defaults to true.
	// +kubebuilder:validation:Optional
	negateCondition?: null | bool @go(NegateCondition,*bool)

	// can be set to Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith or EndsWith
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// match against a specific key when variable is set to PostArgs or RequestHeader. It cannot be used with QueryString and RequestMethod.
	// +kubebuilder:validation:Optional
	selector?: null | string @go(Selector,*string)

	// can be set to one or more values out of Lowercase, RemoveNulls, Trim, Uppercase, UrlDecode and UrlEncode
	// +kubebuilder:validation:Optional
	transform?: [...null | string] @go(Transform,[]*string)

	// value name (string).
	// +kubebuilder:validation:Optional
	value?: [...null | string] @go(Value,[]*string)

	// can be set to IsMobile, RemoteAddr, RequestMethod, QueryString, PostArgs, RequestURI, RequestPath, RequestFilename, RequestFilenameExtension,RequestHeader,RequestBody or RequestScheme.
	// +kubebuilder:validation:Optional
	variable?: null | string @go(Variable,*string)
}

// FrontdoorRulesEngineSpec defines the desired state of FrontdoorRulesEngine
#FrontdoorRulesEngineSpec: {
	forProvider: #FrontdoorRulesEngineParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #FrontdoorRulesEngineInitParameters @go(InitProvider)
}

// FrontdoorRulesEngineStatus defines the observed state of FrontdoorRulesEngine.
#FrontdoorRulesEngineStatus: {
	atProvider?: #FrontdoorRulesEngineObservation @go(AtProvider)
}

// FrontdoorRulesEngine is the Schema for the FrontdoorRulesEngines API. Manages an Azure Front Door (classic) Rules Engine configuration and rules.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FrontdoorRulesEngine: {
	spec:    #FrontdoorRulesEngineSpec   @go(Spec)
	status?: #FrontdoorRulesEngineStatus @go(Status)
}

// FrontdoorRulesEngineList contains a list of FrontdoorRulesEngines
#FrontdoorRulesEngineList: {
	items: [...#FrontdoorRulesEngine] @go(Items,[]FrontdoorRulesEngine)
}
