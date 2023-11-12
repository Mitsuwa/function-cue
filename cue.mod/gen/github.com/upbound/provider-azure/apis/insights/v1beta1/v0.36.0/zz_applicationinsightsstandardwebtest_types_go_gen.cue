// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#ApplicationInsightsStandardWebTestInitParameters: {
	// Purpose/user defined descriptive test for this WebTest.
	description?: null | string @go(Description,*string)

	// Should the WebTest be enabled?
	enabled?: null | bool @go(Enabled,*bool)

	// Interval in seconds between test runs for this WebTest. Valid options are 300, 600 and 900. Defaults to 300.
	frequency?: null | float64 @go(Frequency,*float64)

	// Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application.
	geoLocations?: [...null | string] @go(GeoLocations,[]*string)

	// The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)
	location?: null | string @go(Location,*string)

	// A request block as defined below.
	request?: [...#RequestInitParameters] @go(Request,[]RequestInitParameters)

	// Should the retry on WebTest failure be enabled?
	retryEnabled?: null | bool @go(RetryEnabled,*bool)

	// A mapping of tags which should be assigned to the Application Insights Standard WebTest.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Seconds until this WebTest will timeout and fail. Default is 30.
	timeout?: null | float64 @go(Timeout,*float64)

	// A validation_rules block as defined below.
	validationRules?: [...#ValidationRulesInitParameters] @go(ValidationRules,[]ValidationRulesInitParameters)
}

#ApplicationInsightsStandardWebTestObservation: {
	// The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created.
	applicationInsightsId?: null | string @go(ApplicationInsightsID,*string)

	// Purpose/user defined descriptive test for this WebTest.
	description?: null | string @go(Description,*string)

	// Should the WebTest be enabled?
	enabled?: null | bool @go(Enabled,*bool)

	// Interval in seconds between test runs for this WebTest. Valid options are 300, 600 and 900. Defaults to 300.
	frequency?: null | float64 @go(Frequency,*float64)

	// Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application.
	geoLocations?: [...null | string] @go(GeoLocations,[]*string)

	// The ID of the Application Insights Standard WebTest.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)
	location?: null | string @go(Location,*string)

	// A request block as defined below.
	request?: [...#RequestObservation] @go(Request,[]RequestObservation)

	// The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Should the retry on WebTest failure be enabled?
	retryEnabled?: null | bool @go(RetryEnabled,*bool)

	// Unique ID of this WebTest. This is typically the same value as the Name field.
	syntheticMonitorId?: null | string @go(SyntheticMonitorID,*string)

	// A mapping of tags which should be assigned to the Application Insights Standard WebTest.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Seconds until this WebTest will timeout and fail. Default is 30.
	timeout?: null | float64 @go(Timeout,*float64)

	// A validation_rules block as defined below.
	validationRules?: [...#ValidationRulesObservation] @go(ValidationRules,[]ValidationRulesObservation)
}

#ApplicationInsightsStandardWebTestParameters: {
	// The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.ApplicationInsights
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	applicationInsightsId?: null | string @go(ApplicationInsightsID,*string)

	// Purpose/user defined descriptive test for this WebTest.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Should the WebTest be enabled?
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Interval in seconds between test runs for this WebTest. Valid options are 300, 600 and 900. Defaults to 300.
	// +kubebuilder:validation:Optional
	frequency?: null | float64 @go(Frequency,*float64)

	// Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application.
	// +kubebuilder:validation:Optional
	geoLocations?: [...null | string] @go(GeoLocations,[]*string)

	// The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A request block as defined below.
	// +kubebuilder:validation:Optional
	request?: [...#RequestParameters] @go(Request,[]RequestParameters)

	// The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Should the retry on WebTest failure be enabled?
	// +kubebuilder:validation:Optional
	retryEnabled?: null | bool @go(RetryEnabled,*bool)

	// A mapping of tags which should be assigned to the Application Insights Standard WebTest.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Seconds until this WebTest will timeout and fail. Default is 30.
	// +kubebuilder:validation:Optional
	timeout?: null | float64 @go(Timeout,*float64)

	// A validation_rules block as defined below.
	// +kubebuilder:validation:Optional
	validationRules?: [...#ValidationRulesParameters] @go(ValidationRules,[]ValidationRulesParameters)
}

#ContentInitParameters: {
	// A string value containing the content to match on.
	contentMatch?: null | string @go(ContentMatch,*string)

	// Ignore the casing in the content_match value.
	ignoreCase?: null | bool @go(IgnoreCase,*bool)

	// If the content of content_match is found, pass the test. If set to false, the WebTest is failing if the content of content_match is found.
	passIfTextFound?: null | bool @go(PassIfTextFound,*bool)
}

#ContentObservation: {
	// A string value containing the content to match on.
	contentMatch?: null | string @go(ContentMatch,*string)

	// Ignore the casing in the content_match value.
	ignoreCase?: null | bool @go(IgnoreCase,*bool)

	// If the content of content_match is found, pass the test. If set to false, the WebTest is failing if the content of content_match is found.
	passIfTextFound?: null | bool @go(PassIfTextFound,*bool)
}

#ContentParameters: {
	// A string value containing the content to match on.
	// +kubebuilder:validation:Optional
	contentMatch?: null | string @go(ContentMatch,*string)

	// Ignore the casing in the content_match value.
	// +kubebuilder:validation:Optional
	ignoreCase?: null | bool @go(IgnoreCase,*bool)

	// If the content of content_match is found, pass the test. If set to false, the WebTest is failing if the content of content_match is found.
	// +kubebuilder:validation:Optional
	passIfTextFound?: null | bool @go(PassIfTextFound,*bool)
}

#HeaderInitParameters: {
	// The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created.
	name?: null | string @go(Name,*string)

	// The value which should be used for a header in the request.
	value?: null | string @go(Value,*string)
}

#HeaderObservation: {
	// The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created.
	name?: null | string @go(Name,*string)

	// The value which should be used for a header in the request.
	value?: null | string @go(Value,*string)
}

#HeaderParameters: {
	// The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The value which should be used for a header in the request.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#RequestInitParameters: {
	// The WebTest request body.
	body?: null | string @go(Body,*string)

	// Should the following of redirects be enabled? Defaults to true.
	followRedirectsEnabled?: null | bool @go(FollowRedirectsEnabled,*bool)

	// Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'.
	httpVerb?: null | string @go(HTTPVerb,*string)

	// One or more header blocks as defined above.
	header?: [...#HeaderInitParameters] @go(Header,[]HeaderInitParameters)

	// Should the parsing of dependend requests be enabled? Defaults to true.
	parseDependentRequestsEnabled?: null | bool @go(ParseDependentRequestsEnabled,*bool)

	// The WebTest request URL.
	url?: null | string @go(URL,*string)
}

#RequestObservation: {
	// The WebTest request body.
	body?: null | string @go(Body,*string)

	// Should the following of redirects be enabled? Defaults to true.
	followRedirectsEnabled?: null | bool @go(FollowRedirectsEnabled,*bool)

	// Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'.
	httpVerb?: null | string @go(HTTPVerb,*string)

	// One or more header blocks as defined above.
	header?: [...#HeaderObservation] @go(Header,[]HeaderObservation)

	// Should the parsing of dependend requests be enabled? Defaults to true.
	parseDependentRequestsEnabled?: null | bool @go(ParseDependentRequestsEnabled,*bool)

	// The WebTest request URL.
	url?: null | string @go(URL,*string)
}

#RequestParameters: {
	// The WebTest request body.
	// +kubebuilder:validation:Optional
	body?: null | string @go(Body,*string)

	// Should the following of redirects be enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	followRedirectsEnabled?: null | bool @go(FollowRedirectsEnabled,*bool)

	// Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'.
	// +kubebuilder:validation:Optional
	httpVerb?: null | string @go(HTTPVerb,*string)

	// One or more header blocks as defined above.
	// +kubebuilder:validation:Optional
	header?: [...#HeaderParameters] @go(Header,[]HeaderParameters)

	// Should the parsing of dependend requests be enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	parseDependentRequestsEnabled?: null | bool @go(ParseDependentRequestsEnabled,*bool)

	// The WebTest request URL.
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

#ValidationRulesInitParameters: {
	// A content block as defined above.
	content?: [...#ContentInitParameters] @go(Content,[]ContentInitParameters)

	// The expected status code of the response. Default is '200', '0' means 'response code < 400'
	expectedStatusCode?: null | float64 @go(ExpectedStatusCode,*float64)

	// The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
	sslCertRemainingLifetime?: null | float64 @go(SSLCertRemainingLifetime,*float64)

	// Should the SSL check be enabled?
	sslCheckEnabled?: null | bool @go(SSLCheckEnabled,*bool)
}

#ValidationRulesObservation: {
	// A content block as defined above.
	content?: [...#ContentObservation] @go(Content,[]ContentObservation)

	// The expected status code of the response. Default is '200', '0' means 'response code < 400'
	expectedStatusCode?: null | float64 @go(ExpectedStatusCode,*float64)

	// The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
	sslCertRemainingLifetime?: null | float64 @go(SSLCertRemainingLifetime,*float64)

	// Should the SSL check be enabled?
	sslCheckEnabled?: null | bool @go(SSLCheckEnabled,*bool)
}

#ValidationRulesParameters: {
	// A content block as defined above.
	// +kubebuilder:validation:Optional
	content?: [...#ContentParameters] @go(Content,[]ContentParameters)

	// The expected status code of the response. Default is '200', '0' means 'response code < 400'
	// +kubebuilder:validation:Optional
	expectedStatusCode?: null | float64 @go(ExpectedStatusCode,*float64)

	// The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
	// +kubebuilder:validation:Optional
	sslCertRemainingLifetime?: null | float64 @go(SSLCertRemainingLifetime,*float64)

	// Should the SSL check be enabled?
	// +kubebuilder:validation:Optional
	sslCheckEnabled?: null | bool @go(SSLCheckEnabled,*bool)
}

// ApplicationInsightsStandardWebTestSpec defines the desired state of ApplicationInsightsStandardWebTest
#ApplicationInsightsStandardWebTestSpec: {
	forProvider: #ApplicationInsightsStandardWebTestParameters @go(ForProvider)

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
	initProvider?: #ApplicationInsightsStandardWebTestInitParameters @go(InitProvider)
}

// ApplicationInsightsStandardWebTestStatus defines the observed state of ApplicationInsightsStandardWebTest.
#ApplicationInsightsStandardWebTestStatus: {
	atProvider?: #ApplicationInsightsStandardWebTestObservation @go(AtProvider)
}

// ApplicationInsightsStandardWebTest is the Schema for the ApplicationInsightsStandardWebTests API. Manages a Application Insights Standard WebTest.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ApplicationInsightsStandardWebTest: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.geoLocations) || has(self.initProvider.geoLocations)",message="geoLocations is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.request) || has(self.initProvider.request)",message="request is a required parameter"
	spec:    #ApplicationInsightsStandardWebTestSpec   @go(Spec)
	status?: #ApplicationInsightsStandardWebTestStatus @go(Status)
}

// ApplicationInsightsStandardWebTestList contains a list of ApplicationInsightsStandardWebTests
#ApplicationInsightsStandardWebTestList: {
	items: [...#ApplicationInsightsStandardWebTest] @go(Items,[]ApplicationInsightsStandardWebTest)
}
