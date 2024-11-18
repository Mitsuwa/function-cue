// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/rum/v1beta1

package v1beta1

#AppMonitorConfigurationObservation: {
	// If you set this to true, RUM web client sets two cookies, a session cookie  and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page.
	allowCookies?: null | bool @go(AllowCookies,*bool)

	// If you set this to true, RUM enables X-Ray tracing for the user sessions  that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
	enableXray?: null | bool @go(EnableXray,*bool)

	// A list of URLs in your website or application to exclude from RUM data collection.
	excludedPages?: [...null | string] @go(ExcludedPages,[]*string)

	// A list of pages in the CloudWatch RUM console that are to be displayed with a "favorite" icon.
	favoritePages?: [...null | string] @go(FavoritePages,[]*string)

	// The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
	guestRoleArn?: null | string @go(GuestRoleArn,*string)

	// The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
	identityPoolId?: null | string @go(IdentityPoolID,*string)

	// If this app monitor is to collect data from only certain pages in your application, this structure lists those pages.
	includedPages?: [...null | string] @go(IncludedPages,[]*string)

	// Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is 0.1.
	sessionSampleRate?: null | float64 @go(SessionSampleRate,*float64)

	// An array that lists the types of telemetry data that this app monitor is to collect. Valid values are errors, performance, and http.
	telemetries?: [...null | string] @go(Telemetries,[]*string)
}

#AppMonitorConfigurationParameters: {
	// If you set this to true, RUM web client sets two cookies, a session cookie  and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page.
	// +kubebuilder:validation:Optional
	allowCookies?: null | bool @go(AllowCookies,*bool)

	// If you set this to true, RUM enables X-Ray tracing for the user sessions  that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
	// +kubebuilder:validation:Optional
	enableXray?: null | bool @go(EnableXray,*bool)

	// A list of URLs in your website or application to exclude from RUM data collection.
	// +kubebuilder:validation:Optional
	excludedPages?: [...null | string] @go(ExcludedPages,[]*string)

	// A list of pages in the CloudWatch RUM console that are to be displayed with a "favorite" icon.
	// +kubebuilder:validation:Optional
	favoritePages?: [...null | string] @go(FavoritePages,[]*string)

	// The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
	// +kubebuilder:validation:Optional
	guestRoleArn?: null | string @go(GuestRoleArn,*string)

	// The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
	// +kubebuilder:validation:Optional
	identityPoolId?: null | string @go(IdentityPoolID,*string)

	// If this app monitor is to collect data from only certain pages in your application, this structure lists those pages.
	// +kubebuilder:validation:Optional
	includedPages?: [...null | string] @go(IncludedPages,[]*string)

	// Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is 0.1.
	// +kubebuilder:validation:Optional
	sessionSampleRate?: null | float64 @go(SessionSampleRate,*float64)

	// An array that lists the types of telemetry data that this app monitor is to collect. Valid values are errors, performance, and http.
	// +kubebuilder:validation:Optional
	telemetries?: [...null | string] @go(Telemetries,[]*string)
}

#AppMonitorObservation: {
	// configuration data for the app monitor. See app_monitor_configuration below.
	appMonitorConfiguration?: [...#AppMonitorConfigurationObservation] @go(AppMonitorConfiguration,[]AppMonitorConfigurationObservation)

	// The unique ID of the app monitor. Useful for JS templates.
	appMonitorId?: null | string @go(AppMonitorID,*string)

	// The Amazon Resource Name (ARN) specifying the app monitor.
	arn?: null | string @go(Arn,*string)

	// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are DISABLED. See custom_events below.
	customEvents?: [...#CustomEventsObservation] @go(CustomEvents,[]CustomEventsObservation)

	// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter  specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is false.
	cwLogEnabled?: null | bool @go(CwLogEnabled,*bool)

	// The name of the log group where the copies are stored.
	cwLogGroup?: null | string @go(CwLogGroup,*string)

	// The top-level internet domain name for which your application has administrative authority.
	domain?: null | string @go(Domain,*string)

	// The CloudWatch RUM name as it is the identifier of a RUM.
	id?: null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#AppMonitorParameters: {
	// configuration data for the app monitor. See app_monitor_configuration below.
	// +kubebuilder:validation:Optional
	appMonitorConfiguration?: [...#AppMonitorConfigurationParameters] @go(AppMonitorConfiguration,[]AppMonitorConfigurationParameters)

	// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are DISABLED. See custom_events below.
	// +kubebuilder:validation:Optional
	customEvents?: [...#CustomEventsParameters] @go(CustomEvents,[]CustomEventsParameters)

	// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter  specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is false.
	// +kubebuilder:validation:Optional
	cwLogEnabled?: null | bool @go(CwLogEnabled,*bool)

	// The top-level internet domain name for which your application has administrative authority.
	// +kubebuilder:validation:Optional
	domain?: null | string @go(Domain,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#CustomEventsObservation: {
	// Specifies whether this app monitor allows the web client to define and send custom events. The default is for custom events to be DISABLED. Valid values are DISABLED and ENABLED.
	status?: null | string @go(Status,*string)
}

#CustomEventsParameters: {
	// Specifies whether this app monitor allows the web client to define and send custom events. The default is for custom events to be DISABLED. Valid values are DISABLED and ENABLED.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)
}

// AppMonitorSpec defines the desired state of AppMonitor
#AppMonitorSpec: {
	forProvider: #AppMonitorParameters @go(ForProvider)
}

// AppMonitorStatus defines the observed state of AppMonitor.
#AppMonitorStatus: {
	atProvider?: #AppMonitorObservation @go(AtProvider)
}

// AppMonitor is the Schema for the AppMonitors API. Provides a CloudWatch RUM App Monitor resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AppMonitor: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.domain)",message="domain is a required parameter"
	spec:    #AppMonitorSpec   @go(Spec)
	status?: #AppMonitorStatus @go(Status)
}

// AppMonitorList contains a list of AppMonitors
#AppMonitorList: {
	items: [...#AppMonitor] @go(Items,[]AppMonitor)
}
