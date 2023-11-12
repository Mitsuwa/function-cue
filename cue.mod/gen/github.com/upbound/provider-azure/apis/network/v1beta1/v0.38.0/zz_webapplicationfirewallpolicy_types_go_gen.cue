// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#CustomRulesInitParameters: {
	// Type of action. Possible values are Allow, Block and Log.
	action?: null | string @go(Action,*string)

	// One or more match_conditions blocks as defined below.
	matchConditions?: [...#MatchConditionsInitParameters] @go(MatchConditions,[]MatchConditionsInitParameters)

	// Gets name of the resource that is unique within a policy. This name can be used to access the resource.
	name?: null | string @go(Name,*string)

	// Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
	priority?: null | float64 @go(Priority,*float64)

	// Describes the type of rule. Possible values are MatchRule and Invalid.
	ruleType?: null | string @go(RuleType,*string)
}

#CustomRulesObservation: {
	// Type of action. Possible values are Allow, Block and Log.
	action?: null | string @go(Action,*string)

	// One or more match_conditions blocks as defined below.
	matchConditions?: [...#MatchConditionsObservation] @go(MatchConditions,[]MatchConditionsObservation)

	// Gets name of the resource that is unique within a policy. This name can be used to access the resource.
	name?: null | string @go(Name,*string)

	// Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
	priority?: null | float64 @go(Priority,*float64)

	// Describes the type of rule. Possible values are MatchRule and Invalid.
	ruleType?: null | string @go(RuleType,*string)
}

#CustomRulesParameters: {
	// Type of action. Possible values are Allow, Block and Log.
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// One or more match_conditions blocks as defined below.
	// +kubebuilder:validation:Optional
	matchConditions: [...#MatchConditionsParameters] @go(MatchConditions,[]MatchConditionsParameters)

	// Gets name of the resource that is unique within a policy. This name can be used to access the resource.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// Describes the type of rule. Possible values are MatchRule and Invalid.
	// +kubebuilder:validation:Optional
	ruleType?: null | string @go(RuleType,*string)
}

#ExcludedRuleSetInitParameters: {
	// One or more rule_group block defined below.
	ruleGroup?: [...#RuleGroupInitParameters] @go(RuleGroup,[]RuleGroupInitParameters)

	// The rule set type. Possible values: Microsoft_BotManagerRuleSet and OWASP.
	type?: null | string @go(Type,*string)

	// The rule set version. Possible values: 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2.
	version?: null | string @go(Version,*string)
}

#ExcludedRuleSetObservation: {
	// One or more rule_group block defined below.
	ruleGroup?: [...#RuleGroupObservation] @go(RuleGroup,[]RuleGroupObservation)

	// The rule set type. Possible values: Microsoft_BotManagerRuleSet and OWASP.
	type?: null | string @go(Type,*string)

	// The rule set version. Possible values: 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2.
	version?: null | string @go(Version,*string)
}

#ExcludedRuleSetParameters: {
	// One or more rule_group block defined below.
	// +kubebuilder:validation:Optional
	ruleGroup?: [...#RuleGroupParameters] @go(RuleGroup,[]RuleGroupParameters)

	// The rule set type. Possible values: Microsoft_BotManagerRuleSet and OWASP.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// The rule set version. Possible values: 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#ManagedRuleSetInitParameters: {
	// One or more rule_group_override block defined below.
	ruleGroupOverride?: [...#RuleGroupOverrideInitParameters] @go(RuleGroupOverride,[]RuleGroupOverrideInitParameters)

	// The rule set type. Possible values: Microsoft_BotManagerRuleSet and OWASP.
	type?: null | string @go(Type,*string)

	// The rule set version. Possible values: 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2.
	version?: null | string @go(Version,*string)
}

#ManagedRuleSetObservation: {
	// One or more rule_group_override block defined below.
	ruleGroupOverride?: [...#RuleGroupOverrideObservation] @go(RuleGroupOverride,[]RuleGroupOverrideObservation)

	// The rule set type. Possible values: Microsoft_BotManagerRuleSet and OWASP.
	type?: null | string @go(Type,*string)

	// The rule set version. Possible values: 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2.
	version?: null | string @go(Version,*string)
}

#ManagedRuleSetParameters: {
	// One or more rule_group_override block defined below.
	// +kubebuilder:validation:Optional
	ruleGroupOverride?: [...#RuleGroupOverrideParameters] @go(RuleGroupOverride,[]RuleGroupOverrideParameters)

	// The rule set type. Possible values: Microsoft_BotManagerRuleSet and OWASP.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// The rule set version. Possible values: 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#ManagedRulesExclusionInitParameters: {
	// One or more excluded_rule_set block defined below.
	excludedRuleSet?: [...#ExcludedRuleSetInitParameters] @go(ExcludedRuleSet,[]ExcludedRuleSetInitParameters)

	// The name of the Match Variable. Possible values: RequestArgKeys, RequestArgNames, RequestArgValues, RequestCookieKeys, RequestCookieNames, RequestCookieValues, RequestHeaderKeys, RequestHeaderNames, RequestHeaderValues.
	matchVariable?: null | string @go(MatchVariable,*string)

	// Describes field of the matchVariable collection
	selector?: null | string @go(Selector,*string)

	// Describes operator to be matched. Possible values: Contains, EndsWith, Equals, EqualsAny, StartsWith.
	selectorMatchOperator?: null | string @go(SelectorMatchOperator,*string)
}

#ManagedRulesExclusionObservation: {
	// One or more excluded_rule_set block defined below.
	excludedRuleSet?: [...#ExcludedRuleSetObservation] @go(ExcludedRuleSet,[]ExcludedRuleSetObservation)

	// The name of the Match Variable. Possible values: RequestArgKeys, RequestArgNames, RequestArgValues, RequestCookieKeys, RequestCookieNames, RequestCookieValues, RequestHeaderKeys, RequestHeaderNames, RequestHeaderValues.
	matchVariable?: null | string @go(MatchVariable,*string)

	// Describes field of the matchVariable collection
	selector?: null | string @go(Selector,*string)

	// Describes operator to be matched. Possible values: Contains, EndsWith, Equals, EqualsAny, StartsWith.
	selectorMatchOperator?: null | string @go(SelectorMatchOperator,*string)
}

#ManagedRulesExclusionParameters: {
	// One or more excluded_rule_set block defined below.
	// +kubebuilder:validation:Optional
	excludedRuleSet?: [...#ExcludedRuleSetParameters] @go(ExcludedRuleSet,[]ExcludedRuleSetParameters)

	// The name of the Match Variable. Possible values: RequestArgKeys, RequestArgNames, RequestArgValues, RequestCookieKeys, RequestCookieNames, RequestCookieValues, RequestHeaderKeys, RequestHeaderNames, RequestHeaderValues.
	// +kubebuilder:validation:Optional
	matchVariable?: null | string @go(MatchVariable,*string)

	// Describes field of the matchVariable collection
	// +kubebuilder:validation:Optional
	selector?: null | string @go(Selector,*string)

	// Describes operator to be matched. Possible values: Contains, EndsWith, Equals, EqualsAny, StartsWith.
	// +kubebuilder:validation:Optional
	selectorMatchOperator?: null | string @go(SelectorMatchOperator,*string)
}

#ManagedRulesInitParameters: {
	// One or more exclusion block defined below.
	exclusion?: [...#ManagedRulesExclusionInitParameters] @go(Exclusion,[]ManagedRulesExclusionInitParameters)

	// One or more managed_rule_set block defined below.
	managedRuleSet?: [...#ManagedRuleSetInitParameters] @go(ManagedRuleSet,[]ManagedRuleSetInitParameters)
}

#ManagedRulesObservation: {
	// One or more exclusion block defined below.
	exclusion?: [...#ManagedRulesExclusionObservation] @go(Exclusion,[]ManagedRulesExclusionObservation)

	// One or more managed_rule_set block defined below.
	managedRuleSet?: [...#ManagedRuleSetObservation] @go(ManagedRuleSet,[]ManagedRuleSetObservation)
}

#ManagedRulesParameters: {
	// One or more exclusion block defined below.
	// +kubebuilder:validation:Optional
	exclusion?: [...#ManagedRulesExclusionParameters] @go(Exclusion,[]ManagedRulesExclusionParameters)

	// One or more managed_rule_set block defined below.
	// +kubebuilder:validation:Optional
	managedRuleSet: [...#ManagedRuleSetParameters] @go(ManagedRuleSet,[]ManagedRuleSetParameters)
}

#MatchConditionsInitParameters: {
	// A list of match values. This is Required when the operator is not Any.
	matchValues?: [...null | string] @go(MatchValues,[]*string)

	// One or more match_variables blocks as defined below.
	matchVariables?: [...#MatchVariablesInitParameters] @go(MatchVariables,[]MatchVariablesInitParameters)

	// Describes if this is negate condition or not
	negationCondition?: null | bool @go(NegationCondition,*bool)

	// Describes operator to be matched. Possible values are Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith, EndsWith and Regex.
	operator?: null | string @go(Operator,*string)

	// A list of transformations to do before the match is attempted. Possible values are HtmlEntityDecode, Lowercase, RemoveNulls, Trim, UrlDecode and UrlEncode.
	transforms?: [...null | string] @go(Transforms,[]*string)
}

#MatchConditionsObservation: {
	// A list of match values. This is Required when the operator is not Any.
	matchValues?: [...null | string] @go(MatchValues,[]*string)

	// One or more match_variables blocks as defined below.
	matchVariables?: [...#MatchVariablesObservation] @go(MatchVariables,[]MatchVariablesObservation)

	// Describes if this is negate condition or not
	negationCondition?: null | bool @go(NegationCondition,*bool)

	// Describes operator to be matched. Possible values are Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith, EndsWith and Regex.
	operator?: null | string @go(Operator,*string)

	// A list of transformations to do before the match is attempted. Possible values are HtmlEntityDecode, Lowercase, RemoveNulls, Trim, UrlDecode and UrlEncode.
	transforms?: [...null | string] @go(Transforms,[]*string)
}

#MatchConditionsParameters: {
	// A list of match values. This is Required when the operator is not Any.
	// +kubebuilder:validation:Optional
	matchValues?: [...null | string] @go(MatchValues,[]*string)

	// One or more match_variables blocks as defined below.
	// +kubebuilder:validation:Optional
	matchVariables: [...#MatchVariablesParameters] @go(MatchVariables,[]MatchVariablesParameters)

	// Describes if this is negate condition or not
	// +kubebuilder:validation:Optional
	negationCondition?: null | bool @go(NegationCondition,*bool)

	// Describes operator to be matched. Possible values are Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith, EndsWith and Regex.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of transformations to do before the match is attempted. Possible values are HtmlEntityDecode, Lowercase, RemoveNulls, Trim, UrlDecode and UrlEncode.
	// +kubebuilder:validation:Optional
	transforms?: [...null | string] @go(Transforms,[]*string)
}

#MatchVariablesInitParameters: {
	// Describes field of the matchVariable collection
	selector?: null | string @go(Selector,*string)

	// The name of the Match Variable. Possible values are RemoteAddr, RequestMethod, QueryString, PostArgs, RequestUri, RequestHeaders, RequestBody and RequestCookies.
	variableName?: null | string @go(VariableName,*string)
}

#MatchVariablesObservation: {
	// Describes field of the matchVariable collection
	selector?: null | string @go(Selector,*string)

	// The name of the Match Variable. Possible values are RemoteAddr, RequestMethod, QueryString, PostArgs, RequestUri, RequestHeaders, RequestBody and RequestCookies.
	variableName?: null | string @go(VariableName,*string)
}

#MatchVariablesParameters: {
	// Describes field of the matchVariable collection
	// +kubebuilder:validation:Optional
	selector?: null | string @go(Selector,*string)

	// The name of the Match Variable. Possible values are RemoteAddr, RequestMethod, QueryString, PostArgs, RequestUri, RequestHeaders, RequestBody and RequestCookies.
	// +kubebuilder:validation:Optional
	variableName?: null | string @go(VariableName,*string)
}

#PolicySettingsInitParameters: {
	// Describes if the policy is in enabled state or disabled state. Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The File Upload Limit in MB. Accepted values are in the range 1 to 4000. Defaults to 100.
	fileUploadLimitInMb?: null | float64 @go(FileUploadLimitInMb,*float64)

	// The Maximum Request Body Size in KB. Accepted values are in the range 8 to 2000. Defaults to 128.
	maxRequestBodySizeInKb?: null | float64 @go(MaxRequestBodySizeInKb,*float64)

	// Describes if it is in detection mode or prevention mode at the policy level. Valid values are Detection and Prevention. Defaults to Prevention.
	mode?: null | string @go(Mode,*string)

	// Is Request Body Inspection enabled? Defaults to true.
	requestBodyCheck?: null | bool @go(RequestBodyCheck,*bool)
}

#PolicySettingsObservation: {
	// Describes if the policy is in enabled state or disabled state. Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The File Upload Limit in MB. Accepted values are in the range 1 to 4000. Defaults to 100.
	fileUploadLimitInMb?: null | float64 @go(FileUploadLimitInMb,*float64)

	// The Maximum Request Body Size in KB. Accepted values are in the range 8 to 2000. Defaults to 128.
	maxRequestBodySizeInKb?: null | float64 @go(MaxRequestBodySizeInKb,*float64)

	// Describes if it is in detection mode or prevention mode at the policy level. Valid values are Detection and Prevention. Defaults to Prevention.
	mode?: null | string @go(Mode,*string)

	// Is Request Body Inspection enabled? Defaults to true.
	requestBodyCheck?: null | bool @go(RequestBodyCheck,*bool)
}

#PolicySettingsParameters: {
	// Describes if the policy is in enabled state or disabled state. Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The File Upload Limit in MB. Accepted values are in the range 1 to 4000. Defaults to 100.
	// +kubebuilder:validation:Optional
	fileUploadLimitInMb?: null | float64 @go(FileUploadLimitInMb,*float64)

	// The Maximum Request Body Size in KB. Accepted values are in the range 8 to 2000. Defaults to 128.
	// +kubebuilder:validation:Optional
	maxRequestBodySizeInKb?: null | float64 @go(MaxRequestBodySizeInKb,*float64)

	// Describes if it is in detection mode or prevention mode at the policy level. Valid values are Detection and Prevention. Defaults to Prevention.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// Is Request Body Inspection enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	requestBodyCheck?: null | bool @go(RequestBodyCheck,*bool)
}

#RuleGroupInitParameters: {
	// One or more Rule IDs for exclusion.
	excludedRules?: [...null | string] @go(ExcludedRules,[]*string)

	// The name of the Rule Group. Possible values are BadBots, crs_20_protocol_violations, crs_21_protocol_anomalies, crs_23_request_limits, crs_30_http_policy, crs_35_bad_robots, crs_40_generic_attacks, crs_41_sql_injection_attacks, crs_41_xss_attacks, crs_42_tight_security, crs_45_trojans, General, GoodBots, Known-CVEs, REQUEST-911-METHOD-ENFORCEMENT, REQUEST-913-SCANNER-DETECTION, REQUEST-920-PROTOCOL-ENFORCEMENT, REQUEST-921-PROTOCOL-ATTACK, REQUEST-930-APPLICATION-ATTACK-LFI, REQUEST-931-APPLICATION-ATTACK-RFI, REQUEST-932-APPLICATION-ATTACK-RCE, REQUEST-933-APPLICATION-ATTACK-PHP, REQUEST-941-APPLICATION-ATTACK-XSS, REQUEST-942-APPLICATION-ATTACK-SQLI, REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION, REQUEST-944-APPLICATION-ATTACK-JAVA and UnknownBots.
	ruleGroupName?: null | string @go(RuleGroupName,*string)
}

#RuleGroupObservation: {
	// One or more Rule IDs for exclusion.
	excludedRules?: [...null | string] @go(ExcludedRules,[]*string)

	// The name of the Rule Group. Possible values are BadBots, crs_20_protocol_violations, crs_21_protocol_anomalies, crs_23_request_limits, crs_30_http_policy, crs_35_bad_robots, crs_40_generic_attacks, crs_41_sql_injection_attacks, crs_41_xss_attacks, crs_42_tight_security, crs_45_trojans, General, GoodBots, Known-CVEs, REQUEST-911-METHOD-ENFORCEMENT, REQUEST-913-SCANNER-DETECTION, REQUEST-920-PROTOCOL-ENFORCEMENT, REQUEST-921-PROTOCOL-ATTACK, REQUEST-930-APPLICATION-ATTACK-LFI, REQUEST-931-APPLICATION-ATTACK-RFI, REQUEST-932-APPLICATION-ATTACK-RCE, REQUEST-933-APPLICATION-ATTACK-PHP, REQUEST-941-APPLICATION-ATTACK-XSS, REQUEST-942-APPLICATION-ATTACK-SQLI, REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION, REQUEST-944-APPLICATION-ATTACK-JAVA and UnknownBots.
	ruleGroupName?: null | string @go(RuleGroupName,*string)
}

#RuleGroupOverrideInitParameters: {
	disabledRules?: [...null | string] @go(DisabledRules,[]*string)

	// One or more rule block defined below.
	rule?: [...#RuleGroupOverrideRuleInitParameters] @go(Rule,[]RuleGroupOverrideRuleInitParameters)

	// The name of the Rule Group. Possible values are BadBots, crs_20_protocol_violations, crs_21_protocol_anomalies, crs_23_request_limits, crs_30_http_policy, crs_35_bad_robots, crs_40_generic_attacks, crs_41_sql_injection_attacks, crs_41_xss_attacks, crs_42_tight_security, crs_45_trojans, General, GoodBots, Known-CVEs, REQUEST-911-METHOD-ENFORCEMENT, REQUEST-913-SCANNER-DETECTION, REQUEST-920-PROTOCOL-ENFORCEMENT, REQUEST-921-PROTOCOL-ATTACK, REQUEST-930-APPLICATION-ATTACK-LFI, REQUEST-931-APPLICATION-ATTACK-RFI, REQUEST-932-APPLICATION-ATTACK-RCE, REQUEST-933-APPLICATION-ATTACK-PHP, REQUEST-941-APPLICATION-ATTACK-XSS, REQUEST-942-APPLICATION-ATTACK-SQLI, REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION, REQUEST-944-APPLICATION-ATTACK-JAVA and UnknownBots.
	ruleGroupName?: null | string @go(RuleGroupName,*string)
}

#RuleGroupOverrideObservation: {
	disabledRules?: [...null | string] @go(DisabledRules,[]*string)

	// One or more rule block defined below.
	rule?: [...#RuleGroupOverrideRuleObservation] @go(Rule,[]RuleGroupOverrideRuleObservation)

	// The name of the Rule Group. Possible values are BadBots, crs_20_protocol_violations, crs_21_protocol_anomalies, crs_23_request_limits, crs_30_http_policy, crs_35_bad_robots, crs_40_generic_attacks, crs_41_sql_injection_attacks, crs_41_xss_attacks, crs_42_tight_security, crs_45_trojans, General, GoodBots, Known-CVEs, REQUEST-911-METHOD-ENFORCEMENT, REQUEST-913-SCANNER-DETECTION, REQUEST-920-PROTOCOL-ENFORCEMENT, REQUEST-921-PROTOCOL-ATTACK, REQUEST-930-APPLICATION-ATTACK-LFI, REQUEST-931-APPLICATION-ATTACK-RFI, REQUEST-932-APPLICATION-ATTACK-RCE, REQUEST-933-APPLICATION-ATTACK-PHP, REQUEST-941-APPLICATION-ATTACK-XSS, REQUEST-942-APPLICATION-ATTACK-SQLI, REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION, REQUEST-944-APPLICATION-ATTACK-JAVA and UnknownBots.
	ruleGroupName?: null | string @go(RuleGroupName,*string)
}

#RuleGroupOverrideParameters: {
	// +kubebuilder:validation:Optional
	disabledRules?: [...null | string] @go(DisabledRules,[]*string)

	// One or more rule block defined below.
	// +kubebuilder:validation:Optional
	rule?: [...#RuleGroupOverrideRuleParameters] @go(Rule,[]RuleGroupOverrideRuleParameters)

	// The name of the Rule Group. Possible values are BadBots, crs_20_protocol_violations, crs_21_protocol_anomalies, crs_23_request_limits, crs_30_http_policy, crs_35_bad_robots, crs_40_generic_attacks, crs_41_sql_injection_attacks, crs_41_xss_attacks, crs_42_tight_security, crs_45_trojans, General, GoodBots, Known-CVEs, REQUEST-911-METHOD-ENFORCEMENT, REQUEST-913-SCANNER-DETECTION, REQUEST-920-PROTOCOL-ENFORCEMENT, REQUEST-921-PROTOCOL-ATTACK, REQUEST-930-APPLICATION-ATTACK-LFI, REQUEST-931-APPLICATION-ATTACK-RFI, REQUEST-932-APPLICATION-ATTACK-RCE, REQUEST-933-APPLICATION-ATTACK-PHP, REQUEST-941-APPLICATION-ATTACK-XSS, REQUEST-942-APPLICATION-ATTACK-SQLI, REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION, REQUEST-944-APPLICATION-ATTACK-JAVA and UnknownBots.
	// +kubebuilder:validation:Optional
	ruleGroupName?: null | string @go(RuleGroupName,*string)
}

#RuleGroupOverrideRuleInitParameters: {
	// Describes the override action to be applied when rule matches. Possible values are Allow, AnomalyScoring, Block and Log.
	action?: null | string @go(Action,*string)

	// Describes if the managed rule is in enabled state or disabled state.
	enabled?: null | bool @go(Enabled,*bool)

	// Identifier for the managed rule.
	id?: null | string @go(ID,*string)
}

#RuleGroupOverrideRuleObservation: {
	// Describes the override action to be applied when rule matches. Possible values are Allow, AnomalyScoring, Block and Log.
	action?: null | string @go(Action,*string)

	// Describes if the managed rule is in enabled state or disabled state.
	enabled?: null | bool @go(Enabled,*bool)

	// Identifier for the managed rule.
	id?: null | string @go(ID,*string)
}

#RuleGroupOverrideRuleParameters: {
	// Describes the override action to be applied when rule matches. Possible values are Allow, AnomalyScoring, Block and Log.
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// Describes if the managed rule is in enabled state or disabled state.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Identifier for the managed rule.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)
}

#RuleGroupParameters: {
	// One or more Rule IDs for exclusion.
	// +kubebuilder:validation:Optional
	excludedRules?: [...null | string] @go(ExcludedRules,[]*string)

	// The name of the Rule Group. Possible values are BadBots, crs_20_protocol_violations, crs_21_protocol_anomalies, crs_23_request_limits, crs_30_http_policy, crs_35_bad_robots, crs_40_generic_attacks, crs_41_sql_injection_attacks, crs_41_xss_attacks, crs_42_tight_security, crs_45_trojans, General, GoodBots, Known-CVEs, REQUEST-911-METHOD-ENFORCEMENT, REQUEST-913-SCANNER-DETECTION, REQUEST-920-PROTOCOL-ENFORCEMENT, REQUEST-921-PROTOCOL-ATTACK, REQUEST-930-APPLICATION-ATTACK-LFI, REQUEST-931-APPLICATION-ATTACK-RFI, REQUEST-932-APPLICATION-ATTACK-RCE, REQUEST-933-APPLICATION-ATTACK-PHP, REQUEST-941-APPLICATION-ATTACK-XSS, REQUEST-942-APPLICATION-ATTACK-SQLI, REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION, REQUEST-944-APPLICATION-ATTACK-JAVA and UnknownBots.
	// +kubebuilder:validation:Optional
	ruleGroupName?: null | string @go(RuleGroupName,*string)
}

#WebApplicationFirewallPolicyInitParameters: {
	// One or more custom_rules blocks as defined below.
	customRules?: [...#CustomRulesInitParameters] @go(CustomRules,[]CustomRulesInitParameters)

	// Resource location. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A managed_rules blocks as defined below.
	managedRules?: [...#ManagedRulesInitParameters] @go(ManagedRules,[]ManagedRulesInitParameters)

	// A policy_settings block as defined below.
	policySettings?: [...#PolicySettingsInitParameters] @go(PolicySettings,[]PolicySettingsInitParameters)

	// A mapping of tags to assign to the Web Application Firewall Policy.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WebApplicationFirewallPolicyObservation: {
	// One or more custom_rules blocks as defined below.
	customRules?: [...#CustomRulesObservation] @go(CustomRules,[]CustomRulesObservation)

	// A list of HTTP Listener IDs from an azurerm_application_gateway.
	httpListenerIds?: [...null | string] @go(HTTPListenerIds,[]*string)

	// The ID of the Web Application Firewall Policy.
	id?: null | string @go(ID,*string)

	// Resource location. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A managed_rules blocks as defined below.
	managedRules?: [...#ManagedRulesObservation] @go(ManagedRules,[]ManagedRulesObservation)

	// A list of URL Path Map Path Rule IDs from an azurerm_application_gateway.
	pathBasedRuleIds?: [...null | string] @go(PathBasedRuleIds,[]*string)

	// A policy_settings block as defined below.
	policySettings?: [...#PolicySettingsObservation] @go(PolicySettings,[]PolicySettingsObservation)

	// The name of the resource group. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the Web Application Firewall Policy.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WebApplicationFirewallPolicyParameters: {
	// One or more custom_rules blocks as defined below.
	// +kubebuilder:validation:Optional
	customRules?: [...#CustomRulesParameters] @go(CustomRules,[]CustomRulesParameters)

	// Resource location. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A managed_rules blocks as defined below.
	// +kubebuilder:validation:Optional
	managedRules?: [...#ManagedRulesParameters] @go(ManagedRules,[]ManagedRulesParameters)

	// A policy_settings block as defined below.
	// +kubebuilder:validation:Optional
	policySettings?: [...#PolicySettingsParameters] @go(PolicySettings,[]PolicySettingsParameters)

	// The name of the resource group. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the Web Application Firewall Policy.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// WebApplicationFirewallPolicySpec defines the desired state of WebApplicationFirewallPolicy
#WebApplicationFirewallPolicySpec: {
	forProvider: #WebApplicationFirewallPolicyParameters @go(ForProvider)

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
	initProvider?: #WebApplicationFirewallPolicyInitParameters @go(InitProvider)
}

// WebApplicationFirewallPolicyStatus defines the observed state of WebApplicationFirewallPolicy.
#WebApplicationFirewallPolicyStatus: {
	atProvider?: #WebApplicationFirewallPolicyObservation @go(AtProvider)
}

// WebApplicationFirewallPolicy is the Schema for the WebApplicationFirewallPolicys API. Manages a Azure Web Application Firewall Policy instance.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#WebApplicationFirewallPolicy: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.managedRules) || (has(self.initProvider) && has(self.initProvider.managedRules))",message="spec.forProvider.managedRules is a required parameter"
	spec:    #WebApplicationFirewallPolicySpec   @go(Spec)
	status?: #WebApplicationFirewallPolicyStatus @go(Status)
}

// WebApplicationFirewallPolicyList contains a list of WebApplicationFirewallPolicys
#WebApplicationFirewallPolicyList: {
	items: [...#WebApplicationFirewallPolicy] @go(Items,[]WebApplicationFirewallPolicy)
}
