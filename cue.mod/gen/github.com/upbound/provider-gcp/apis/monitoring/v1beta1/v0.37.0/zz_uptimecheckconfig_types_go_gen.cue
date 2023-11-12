// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/monitoring/v1beta1

package v1beta1

#AcceptedResponseStatusCodesInitParameters: {
	// A class of status codes to accept.
	// Possible values are: STATUS_CLASS_1XX, STATUS_CLASS_2XX, STATUS_CLASS_3XX, STATUS_CLASS_4XX, STATUS_CLASS_5XX, STATUS_CLASS_ANY.
	statusClass?: null | string @go(StatusClass,*string)

	// A status code to accept.
	statusValue?: null | float64 @go(StatusValue,*float64)
}

#AcceptedResponseStatusCodesObservation: {
	// A class of status codes to accept.
	// Possible values are: STATUS_CLASS_1XX, STATUS_CLASS_2XX, STATUS_CLASS_3XX, STATUS_CLASS_4XX, STATUS_CLASS_5XX, STATUS_CLASS_ANY.
	statusClass?: null | string @go(StatusClass,*string)

	// A status code to accept.
	statusValue?: null | float64 @go(StatusValue,*float64)
}

#AcceptedResponseStatusCodesParameters: {
	// A class of status codes to accept.
	// Possible values are: STATUS_CLASS_1XX, STATUS_CLASS_2XX, STATUS_CLASS_3XX, STATUS_CLASS_4XX, STATUS_CLASS_5XX, STATUS_CLASS_ANY.
	// +kubebuilder:validation:Optional
	statusClass?: null | string @go(StatusClass,*string)

	// A status code to accept.
	// +kubebuilder:validation:Optional
	statusValue?: null | float64 @go(StatusValue,*float64)
}

#AuthInfoInitParameters: {
	// The username to authenticate.
	username?: null | string @go(Username,*string)
}

#AuthInfoObservation: {
	// The username to authenticate.
	username?: null | string @go(Username,*string)
}

#AuthInfoParameters: {
	// The username to authenticate.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

#ContentMatchersInitParameters: {
	// String or regex content to match (max 1024 bytes)
	content?: null | string @go(Content,*string)

	// Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.
	// Structure is documented below.
	jsonPathMatcher?: [...#JSONPathMatcherInitParameters] @go(JSONPathMatcher,[]JSONPathMatcherInitParameters)

	// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
	// Default value is CONTAINS_STRING.
	// Possible values are: CONTAINS_STRING, NOT_CONTAINS_STRING, MATCHES_REGEX, NOT_MATCHES_REGEX, MATCHES_JSON_PATH, NOT_MATCHES_JSON_PATH.
	matcher?: null | string @go(Matcher,*string)
}

#ContentMatchersObservation: {
	// String or regex content to match (max 1024 bytes)
	content?: null | string @go(Content,*string)

	// Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.
	// Structure is documented below.
	jsonPathMatcher?: [...#JSONPathMatcherObservation] @go(JSONPathMatcher,[]JSONPathMatcherObservation)

	// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
	// Default value is CONTAINS_STRING.
	// Possible values are: CONTAINS_STRING, NOT_CONTAINS_STRING, MATCHES_REGEX, NOT_MATCHES_REGEX, MATCHES_JSON_PATH, NOT_MATCHES_JSON_PATH.
	matcher?: null | string @go(Matcher,*string)
}

#ContentMatchersParameters: {
	// String or regex content to match (max 1024 bytes)
	// +kubebuilder:validation:Optional
	content?: null | string @go(Content,*string)

	// Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	jsonPathMatcher?: [...#JSONPathMatcherParameters] @go(JSONPathMatcher,[]JSONPathMatcherParameters)

	// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
	// Default value is CONTAINS_STRING.
	// Possible values are: CONTAINS_STRING, NOT_CONTAINS_STRING, MATCHES_REGEX, NOT_MATCHES_REGEX, MATCHES_JSON_PATH, NOT_MATCHES_JSON_PATH.
	// +kubebuilder:validation:Optional
	matcher?: null | string @go(Matcher,*string)
}

#HTTPCheckInitParameters: {
	// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
	// Structure is documented below.
	acceptedResponseStatusCodes?: [...#AcceptedResponseStatusCodesInitParameters] @go(AcceptedResponseStatusCodes,[]AcceptedResponseStatusCodesInitParameters)

	// The authentication information. Optional when creating an HTTP check; defaults to empty.
	// Structure is documented below.
	authInfo?: [...#AuthInfoInitParameters] @go(AuthInfo,[]AuthInfoInitParameters)

	// The request body associated with the HTTP POST request. If contentType is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the requestMethod is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. "foo=bar" in URL-encoded form is "foo%3Dbar" and in base64 encoding is "Zm9vJTI1M0RiYXI=".
	body?: null | string @go(Body,*string)

	// The content type to use for the check.
	// Possible values are: TYPE_UNSPECIFIED, URL_ENCODED.
	contentType?: null | string @go(ContentType,*string)

	// The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to True then the headers will be obscured with ******.
	maskHeaders?: null | bool @go(MaskHeaders,*bool)

	// The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with "/", a "/" will be prepended automatically. Optional (defaults to "/").
	path?: null | string @go(Path,*string)

	// The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
	port?: null | float64 @go(Port,*float64)

	// The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then requestMethod defaults to GET.
	// Default value is GET.
	// Possible values are: METHOD_UNSPECIFIED, GET, POST.
	requestMethod?: null | string @go(RequestMethod,*string)

	// If true, use HTTPS instead of HTTP to run the check.
	useSsl?: null | bool @go(UseSSL,*bool)

	// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitoredResource is set to uptime_url. If useSsl is false, setting validateSsl to true has no effect.
	validateSsl?: null | bool @go(ValidateSSL,*bool)
}

#HTTPCheckObservation: {
	// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
	// Structure is documented below.
	acceptedResponseStatusCodes?: [...#AcceptedResponseStatusCodesObservation] @go(AcceptedResponseStatusCodes,[]AcceptedResponseStatusCodesObservation)

	// The authentication information. Optional when creating an HTTP check; defaults to empty.
	// Structure is documented below.
	authInfo?: [...#AuthInfoObservation] @go(AuthInfo,[]AuthInfoObservation)

	// The request body associated with the HTTP POST request. If contentType is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the requestMethod is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. "foo=bar" in URL-encoded form is "foo%3Dbar" and in base64 encoding is "Zm9vJTI1M0RiYXI=".
	body?: null | string @go(Body,*string)

	// The content type to use for the check.
	// Possible values are: TYPE_UNSPECIFIED, URL_ENCODED.
	contentType?: null | string @go(ContentType,*string)

	// The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to True then the headers will be obscured with ******.
	maskHeaders?: null | bool @go(MaskHeaders,*bool)

	// The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with "/", a "/" will be prepended automatically. Optional (defaults to "/").
	path?: null | string @go(Path,*string)

	// The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
	port?: null | float64 @go(Port,*float64)

	// The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then requestMethod defaults to GET.
	// Default value is GET.
	// Possible values are: METHOD_UNSPECIFIED, GET, POST.
	requestMethod?: null | string @go(RequestMethod,*string)

	// If true, use HTTPS instead of HTTP to run the check.
	useSsl?: null | bool @go(UseSSL,*bool)

	// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitoredResource is set to uptime_url. If useSsl is false, setting validateSsl to true has no effect.
	validateSsl?: null | bool @go(ValidateSSL,*bool)
}

#HTTPCheckParameters: {
	// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	acceptedResponseStatusCodes?: [...#AcceptedResponseStatusCodesParameters] @go(AcceptedResponseStatusCodes,[]AcceptedResponseStatusCodesParameters)

	// The authentication information. Optional when creating an HTTP check; defaults to empty.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	authInfo?: [...#AuthInfoParameters] @go(AuthInfo,[]AuthInfoParameters)

	// The request body associated with the HTTP POST request. If contentType is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the requestMethod is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. "foo=bar" in URL-encoded form is "foo%3Dbar" and in base64 encoding is "Zm9vJTI1M0RiYXI=".
	// +kubebuilder:validation:Optional
	body?: null | string @go(Body,*string)

	// The content type to use for the check.
	// Possible values are: TYPE_UNSPECIFIED, URL_ENCODED.
	// +kubebuilder:validation:Optional
	contentType?: null | string @go(ContentType,*string)

	// The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
	// +kubebuilder:validation:Optional
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to True then the headers will be obscured with ******.
	// +kubebuilder:validation:Optional
	maskHeaders?: null | bool @go(MaskHeaders,*bool)

	// The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with "/", a "/" will be prepended automatically. Optional (defaults to "/").
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)

	// The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then requestMethod defaults to GET.
	// Default value is GET.
	// Possible values are: METHOD_UNSPECIFIED, GET, POST.
	// +kubebuilder:validation:Optional
	requestMethod?: null | string @go(RequestMethod,*string)

	// If true, use HTTPS instead of HTTP to run the check.
	// +kubebuilder:validation:Optional
	useSsl?: null | bool @go(UseSSL,*bool)

	// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitoredResource is set to uptime_url. If useSsl is false, setting validateSsl to true has no effect.
	// +kubebuilder:validation:Optional
	validateSsl?: null | bool @go(ValidateSSL,*bool)
}

#JSONPathMatcherInitParameters: {
	// Options to perform JSONPath content matching.
	// Default value is EXACT_MATCH.
	// Possible values are: EXACT_MATCH, REGEX_MATCH.
	jsonMatcher?: null | string @go(JSONMatcher,*string)

	// JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
	jsonPath?: null | string @go(JSONPath,*string)
}

#JSONPathMatcherObservation: {
	// Options to perform JSONPath content matching.
	// Default value is EXACT_MATCH.
	// Possible values are: EXACT_MATCH, REGEX_MATCH.
	jsonMatcher?: null | string @go(JSONMatcher,*string)

	// JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
	jsonPath?: null | string @go(JSONPath,*string)
}

#JSONPathMatcherParameters: {
	// Options to perform JSONPath content matching.
	// Default value is EXACT_MATCH.
	// Possible values are: EXACT_MATCH, REGEX_MATCH.
	// +kubebuilder:validation:Optional
	jsonMatcher?: null | string @go(JSONMatcher,*string)

	// JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
	// +kubebuilder:validation:Optional
	jsonPath?: null | string @go(JSONPath,*string)
}

#MonitoredResourceInitParameters: {
	// Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels "project_id", "instance_id", and "zone".
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).
	type?: null | string @go(Type,*string)
}

#MonitoredResourceObservation: {
	// Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels "project_id", "instance_id", and "zone".
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).
	type?: null | string @go(Type,*string)
}

#MonitoredResourceParameters: {
	// Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels "project_id", "instance_id", and "zone".
	// +kubebuilder:validation:Optional
	labels: {[string]: null | string} @go(Labels,map[string]*string)

	// The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#ResourceGroupInitParameters: {
	// The resource type of the group members.
	// Possible values are: RESOURCE_TYPE_UNSPECIFIED, INSTANCE, AWS_ELB_LOAD_BALANCER.
	resourceType?: null | string @go(ResourceType,*string)
}

#ResourceGroupObservation: {
	// The group of resources being monitored. Should be the name of a group
	groupId?: null | string @go(GroupID,*string)

	// The resource type of the group members.
	// Possible values are: RESOURCE_TYPE_UNSPECIFIED, INSTANCE, AWS_ELB_LOAD_BALANCER.
	resourceType?: null | string @go(ResourceType,*string)
}

#ResourceGroupParameters: {
	// The group of resources being monitored. Should be the name of a group
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/monitoring/v1beta1.Group
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",true)
	// +kubebuilder:validation:Optional
	groupId?: null | string @go(GroupID,*string)

	// The resource type of the group members.
	// Possible values are: RESOURCE_TYPE_UNSPECIFIED, INSTANCE, AWS_ELB_LOAD_BALANCER.
	// +kubebuilder:validation:Optional
	resourceType?: null | string @go(ResourceType,*string)
}

#TCPCheckInitParameters: {
	// The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) to construct the full URL.
	port?: null | float64 @go(Port,*float64)
}

#TCPCheckObservation: {
	// The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) to construct the full URL.
	port?: null | float64 @go(Port,*float64)
}

#TCPCheckParameters: {
	// The port to the page to run the check against. Will be combined with host (specified within the MonitoredResource) to construct the full URL.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)
}

#UptimeCheckConfigInitParameters: {
	// The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS.
	// Possible values are: STATIC_IP_CHECKERS, VPC_CHECKERS.
	checkerType?: null | string @go(CheckerType,*string)

	// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
	// Structure is documented below.
	contentMatchers?: [...#ContentMatchersInitParameters] @go(ContentMatchers,[]ContentMatchersInitParameters)

	// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
	displayName?: null | string @go(DisplayName,*string)

	// Contains information needed to make an HTTP or HTTPS check.
	// Structure is documented below.
	httpCheck?: [...#HTTPCheckInitParameters] @go(HTTPCheck,[]HTTPCheckInitParameters)

	// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service
	// Structure is documented below.
	monitoredResource?: [...#MonitoredResourceInitParameters] @go(MonitoredResource,[]MonitoredResourceInitParameters)

	// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
	period?: null | string @go(Period,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The group resource associated with the configuration.
	// Structure is documented below.
	resourceGroup?: [...#ResourceGroupInitParameters] @go(ResourceGroup,[]ResourceGroupInitParameters)

	// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
	selectedRegions?: [...null | string] @go(SelectedRegions,[]*string)

	// Contains information needed to make a TCP check.
	// Structure is documented below.
	tcpCheck?: [...#TCPCheckInitParameters] @go(TCPCheck,[]TCPCheckInitParameters)

	// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration
	timeout?: null | string @go(Timeout,*string)
}

#UptimeCheckConfigObservation: {
	// The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS.
	// Possible values are: STATIC_IP_CHECKERS, VPC_CHECKERS.
	checkerType?: null | string @go(CheckerType,*string)

	// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
	// Structure is documented below.
	contentMatchers?: [...#ContentMatchersObservation] @go(ContentMatchers,[]ContentMatchersObservation)

	// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
	displayName?: null | string @go(DisplayName,*string)

	// Contains information needed to make an HTTP or HTTPS check.
	// Structure is documented below.
	httpCheck?: [...#HTTPCheckObservation] @go(HTTPCheck,[]HTTPCheckObservation)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service
	// Structure is documented below.
	monitoredResource?: [...#MonitoredResourceObservation] @go(MonitoredResource,[]MonitoredResourceObservation)

	// A unique resource name for this UptimeCheckConfig. The format is projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID].
	name?: null | string @go(Name,*string)

	// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
	period?: null | string @go(Period,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The group resource associated with the configuration.
	// Structure is documented below.
	resourceGroup?: [...#ResourceGroupObservation] @go(ResourceGroup,[]ResourceGroupObservation)

	// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
	selectedRegions?: [...null | string] @go(SelectedRegions,[]*string)

	// Contains information needed to make a TCP check.
	// Structure is documented below.
	tcpCheck?: [...#TCPCheckObservation] @go(TCPCheck,[]TCPCheckObservation)

	// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration
	timeout?: null | string @go(Timeout,*string)

	// The id of the uptime check
	uptimeCheckId?: null | string @go(UptimeCheckID,*string)
}

#UptimeCheckConfigParameters: {
	// The checker type to use for the check. If the monitored resource type is servicedirectory_service, checkerType must be set to VPC_CHECKERS.
	// Possible values are: STATIC_IP_CHECKERS, VPC_CHECKERS.
	// +kubebuilder:validation:Optional
	checkerType?: null | string @go(CheckerType,*string)

	// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	contentMatchers?: [...#ContentMatchersParameters] @go(ContentMatchers,[]ContentMatchersParameters)

	// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Contains information needed to make an HTTP or HTTPS check.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	httpCheck?: [...#HTTPCheckParameters] @go(HTTPCheck,[]HTTPCheckParameters)

	// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance aws_elb_load_balancer  k8s_service  servicedirectory_service
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	monitoredResource?: [...#MonitoredResourceParameters] @go(MonitoredResource,[]MonitoredResourceParameters)

	// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
	// +kubebuilder:validation:Optional
	period?: null | string @go(Period,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The group resource associated with the configuration.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	resourceGroup?: [...#ResourceGroupParameters] @go(ResourceGroup,[]ResourceGroupParameters)

	// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
	// +kubebuilder:validation:Optional
	selectedRegions?: [...null | string] @go(SelectedRegions,[]*string)

	// Contains information needed to make a TCP check.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	tcpCheck?: [...#TCPCheckParameters] @go(TCPCheck,[]TCPCheckParameters)

	// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration
	// +kubebuilder:validation:Optional
	timeout?: null | string @go(Timeout,*string)
}

// UptimeCheckConfigSpec defines the desired state of UptimeCheckConfig
#UptimeCheckConfigSpec: {
	forProvider: #UptimeCheckConfigParameters @go(ForProvider)

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
	initProvider?: #UptimeCheckConfigInitParameters @go(InitProvider)
}

// UptimeCheckConfigStatus defines the observed state of UptimeCheckConfig.
#UptimeCheckConfigStatus: {
	atProvider?: #UptimeCheckConfigObservation @go(AtProvider)
}

// UptimeCheckConfig is the Schema for the UptimeCheckConfigs API. This message configures which resources and services to monitor for availability.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#UptimeCheckConfig: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.timeout) || (has(self.initProvider) && has(self.initProvider.timeout))",message="spec.forProvider.timeout is a required parameter"
	spec:    #UptimeCheckConfigSpec   @go(Spec)
	status?: #UptimeCheckConfigStatus @go(Status)
}

// UptimeCheckConfigList contains a list of UptimeCheckConfigs
#UptimeCheckConfigList: {
	items: [...#UptimeCheckConfig] @go(Items,[]UptimeCheckConfig)
}
