// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/appengine/v1beta1

package v1beta1

#AutomaticScalingObservation: {
	// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
	// Defaults to a runtime-specific value.
	maxConcurrentRequests?: null | float64 @go(MaxConcurrentRequests,*float64)

	// Maximum number of idle instances that should be maintained for this version.
	maxIdleInstances?: null | float64 @go(MaxIdleInstances,*float64)

	// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
	maxPendingLatency?: null | string @go(MaxPendingLatency,*string)

	// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
	minIdleInstances?: null | float64 @go(MinIdleInstances,*float64)

	// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
	minPendingLatency?: null | string @go(MinPendingLatency,*string)

	// Scheduler settings for standard environment.
	// Structure is documented below.
	standardSchedulerSettings?: [...#StandardSchedulerSettingsObservation] @go(StandardSchedulerSettings,[]StandardSchedulerSettingsObservation)
}

#AutomaticScalingParameters: {
	// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
	// Defaults to a runtime-specific value.
	// +kubebuilder:validation:Optional
	maxConcurrentRequests?: null | float64 @go(MaxConcurrentRequests,*float64)

	// Maximum number of idle instances that should be maintained for this version.
	// +kubebuilder:validation:Optional
	maxIdleInstances?: null | float64 @go(MaxIdleInstances,*float64)

	// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
	// +kubebuilder:validation:Optional
	maxPendingLatency?: null | string @go(MaxPendingLatency,*string)

	// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
	// +kubebuilder:validation:Optional
	minIdleInstances?: null | float64 @go(MinIdleInstances,*float64)

	// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
	// +kubebuilder:validation:Optional
	minPendingLatency?: null | string @go(MinPendingLatency,*string)

	// Scheduler settings for standard environment.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	standardSchedulerSettings?: [...#StandardSchedulerSettingsParameters] @go(StandardSchedulerSettings,[]StandardSchedulerSettingsParameters)
}

#BasicScalingObservation: {
	// Duration of time after the last request that an instance must wait before the instance is shut down.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
	idleTimeout?: null | string @go(IdleTimeout,*string)

	// Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].
	maxInstances?: null | float64 @go(MaxInstances,*float64)
}

#BasicScalingParameters: {
	// Duration of time after the last request that an instance must wait before the instance is shut down.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
	// +kubebuilder:validation:Optional
	idleTimeout?: null | string @go(IdleTimeout,*string)

	// Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].
	// +kubebuilder:validation:Required
	maxInstances?: null | float64 @go(MaxInstances,*float64)
}

#DeploymentObservation: {
	// Manifest of the files stored in Google Cloud Storage that are included as part of this version.
	// All files must be readable using the credentials supplied with this call.
	// Structure is documented below.
	files?: [...#FilesObservation] @go(Files,[]FilesObservation)

	// Zip File
	// Structure is documented below.
	zip?: [...#ZipObservation] @go(Zip,[]ZipObservation)
}

#DeploymentParameters: {
	// Manifest of the files stored in Google Cloud Storage that are included as part of this version.
	// All files must be readable using the credentials supplied with this call.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	files?: [...#FilesParameters] @go(Files,[]FilesParameters)

	// Zip File
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	zip?: [...#ZipParameters] @go(Zip,[]ZipParameters)
}

#EntrypointObservation: {
	// The format should be a shell command that can be fed to bash -c.
	shell?: null | string @go(Shell,*string)
}

#EntrypointParameters: {
	// The format should be a shell command that can be fed to bash -c.
	// +kubebuilder:validation:Required
	shell?: null | string @go(Shell,*string)
}

#FilesObservation: {
	// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
	name?: null | string @go(Name,*string)

	// SHA1 checksum of the file
	sha1Sum?: null | string @go(Sha1Sum,*string)

	// Source URL
	sourceUrl?: null | string @go(SourceURL,*string)
}

#FilesParameters: {
	// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// SHA1 checksum of the file
	// +kubebuilder:validation:Optional
	sha1Sum?: null | string @go(Sha1Sum,*string)

	// Source URL
	// +kubebuilder:validation:Required
	sourceUrl?: null | string @go(SourceURL,*string)
}

#HandlersObservation: {
	// Actions to take when the user is not logged in.
	// Possible values are: AUTH_FAIL_ACTION_REDIRECT, AUTH_FAIL_ACTION_UNAUTHORIZED.
	authFailAction?: null | string @go(AuthFailAction,*string)

	// Methods to restrict access to a URL based on login status.
	// Possible values are: LOGIN_OPTIONAL, LOGIN_ADMIN, LOGIN_REQUIRED.
	login?: null | string @go(Login,*string)

	// 30x code to use when performing redirects for the secure field.
	// Possible values are: REDIRECT_HTTP_RESPONSE_CODE_301, REDIRECT_HTTP_RESPONSE_CODE_302, REDIRECT_HTTP_RESPONSE_CODE_303, REDIRECT_HTTP_RESPONSE_CODE_307.
	redirectHttpResponseCode?: null | string @go(RedirectHTTPResponseCode,*string)

	// Executes a script to handle the requests that match this URL pattern.
	// Only the auto value is supported for Node.js in the App Engine standard environment, for example "script:" "auto".
	// Structure is documented below.
	script?: [...#ScriptObservation] @go(Script,[]ScriptObservation)

	// Security (HTTPS) enforcement for this URL.
	// Possible values are: SECURE_DEFAULT, SECURE_NEVER, SECURE_OPTIONAL, SECURE_ALWAYS.
	securityLevel?: null | string @go(SecurityLevel,*string)

	// Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
	// Structure is documented below.
	staticFiles?: [...#StaticFilesObservation] @go(StaticFiles,[]StaticFilesObservation)

	// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
	// All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
	urlRegex?: null | string @go(URLRegex,*string)
}

#HandlersParameters: {
	// Actions to take when the user is not logged in.
	// Possible values are: AUTH_FAIL_ACTION_REDIRECT, AUTH_FAIL_ACTION_UNAUTHORIZED.
	// +kubebuilder:validation:Optional
	authFailAction?: null | string @go(AuthFailAction,*string)

	// Methods to restrict access to a URL based on login status.
	// Possible values are: LOGIN_OPTIONAL, LOGIN_ADMIN, LOGIN_REQUIRED.
	// +kubebuilder:validation:Optional
	login?: null | string @go(Login,*string)

	// 30x code to use when performing redirects for the secure field.
	// Possible values are: REDIRECT_HTTP_RESPONSE_CODE_301, REDIRECT_HTTP_RESPONSE_CODE_302, REDIRECT_HTTP_RESPONSE_CODE_303, REDIRECT_HTTP_RESPONSE_CODE_307.
	// +kubebuilder:validation:Optional
	redirectHttpResponseCode?: null | string @go(RedirectHTTPResponseCode,*string)

	// Executes a script to handle the requests that match this URL pattern.
	// Only the auto value is supported for Node.js in the App Engine standard environment, for example "script:" "auto".
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	script?: [...#ScriptParameters] @go(Script,[]ScriptParameters)

	// Security (HTTPS) enforcement for this URL.
	// Possible values are: SECURE_DEFAULT, SECURE_NEVER, SECURE_OPTIONAL, SECURE_ALWAYS.
	// +kubebuilder:validation:Optional
	securityLevel?: null | string @go(SecurityLevel,*string)

	// Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	staticFiles?: [...#StaticFilesParameters] @go(StaticFiles,[]StaticFilesParameters)

	// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
	// All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
	// +kubebuilder:validation:Optional
	urlRegex?: null | string @go(URLRegex,*string)
}

#LibrariesObservation: {
	// Name of the library. Example "django".
	name?: null | string @go(Name,*string)

	// Version of the library to select, or "latest".
	version?: null | string @go(Version,*string)
}

#LibrariesParameters: {
	// Name of the library. Example "django".
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Version of the library to select, or "latest".
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#ManualScalingObservation: {
	// Number of instances to assign to the service at the start.
	// Note: When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
	// Modules API set_num_instances() you must use lifecycle.ignore_changes = ["manual_scaling"[0].instances] to prevent drift detection.
	instances?: null | float64 @go(Instances,*float64)
}

#ManualScalingParameters: {
	// Number of instances to assign to the service at the start.
	// Note: When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
	// Modules API set_num_instances() you must use lifecycle.ignore_changes = ["manual_scaling"[0].instances] to prevent drift detection.
	// +kubebuilder:validation:Required
	instances?: null | float64 @go(Instances,*float64)
}

#ScriptObservation: {
	// Path to the script from the application root directory.
	scriptPath?: null | string @go(ScriptPath,*string)
}

#ScriptParameters: {
	// Path to the script from the application root directory.
	// +kubebuilder:validation:Required
	scriptPath?: null | string @go(ScriptPath,*string)
}

#StandardAppVersionObservation: {
	// Allows App Engine second generation runtimes to access the legacy bundled services.
	appEngineApis?: null | bool @go(AppEngineApis,*bool)

	// Automatic scaling is based on request rate, response latencies, and other application metrics.
	// Structure is documented below.
	automaticScaling?: [...#AutomaticScalingObservation] @go(AutomaticScaling,[]AutomaticScalingObservation)

	// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
	// Structure is documented below.
	basicScaling?: [...#BasicScalingObservation] @go(BasicScaling,[]BasicScalingObservation)

	// If set to true, the service will be deleted if it is the last version.
	deleteServiceOnDestroy?: null | bool @go(DeleteServiceOnDestroy,*bool)

	// Code and application artifacts that make up this version.
	// Structure is documented below.
	deployment?: [...#DeploymentObservation] @go(Deployment,[]DeploymentObservation)

	// The entrypoint for the application.
	// Structure is documented below.
	entrypoint?: [...#EntrypointObservation] @go(Entrypoint,[]EntrypointObservation)

	// Environment variables available to the application.
	envVariables?: {[string]: null | string} @go(EnvVariables,map[string]*string)

	// An ordered list of URL-matching patterns that should be applied to incoming requests.
	// The first matching URL handles the request and other request handlers are not attempted.
	// Structure is documented below.
	handlers?: [...#HandlersObservation] @go(Handlers,[]HandlersObservation)

	// an identifier for the resource with format apps/{{project}}/services/{{service}}/versions/{{version_id}}
	id?: null | string @go(ID,*string)

	// A list of the types of messages that this application is able to receive.
	// Each value may be one of: INBOUND_SERVICE_MAIL, INBOUND_SERVICE_MAIL_BOUNCE, INBOUND_SERVICE_XMPP_ERROR, INBOUND_SERVICE_XMPP_MESSAGE, INBOUND_SERVICE_XMPP_SUBSCRIBE, INBOUND_SERVICE_XMPP_PRESENCE, INBOUND_SERVICE_CHANNEL_PRESENCE, INBOUND_SERVICE_WARMUP.
	inboundServices?: [...null | string] @go(InboundServices,[]*string)

	// Instance class that is used to run this version. Valid values are
	// AutomaticScaling: F1, F2, F4, F4_1G
	// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
	// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
	instanceClass?: null | string @go(InstanceClass,*string)

	// Configuration for third-party Python runtime libraries that are required by the application.
	// Structure is documented below.
	libraries?: [...#LibrariesObservation] @go(Libraries,[]LibrariesObservation)

	// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
	// Structure is documented below.
	manualScaling?: [...#ManualScalingObservation] @go(ManualScaling,[]ManualScalingObservation)

	// Full path to the Version resource in the API. Example, "v1".
	name?: null | string @go(Name,*string)

	// If set to true, the application version will not be deleted.
	noopOnDestroy?: null | bool @go(NoopOnDestroy,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Desired runtime. Example python27.
	runtime?: null | string @go(Runtime,*string)

	// The version of the API in the given runtime environment.
	// Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard/<language>/config/appref
	// Substitute <language> with python, java, php, ruby, go or nodejs.
	runtimeApiVersion?: null | string @go(RuntimeAPIVersion,*string)

	// AppEngine service resource
	service?: null | string @go(Service,*string)

	// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// Whether multiple requests can be dispatched to this version at once.
	threadsafe?: null | bool @go(Threadsafe,*bool)

	// Enables VPC connectivity for standard apps.
	// Structure is documented below.
	vpcAccessConnector?: [...#VPCAccessConnectorObservation] @go(VPCAccessConnector,[]VPCAccessConnectorObservation)
}

#StandardAppVersionParameters: {
	// Allows App Engine second generation runtimes to access the legacy bundled services.
	// +kubebuilder:validation:Optional
	appEngineApis?: null | bool @go(AppEngineApis,*bool)

	// Automatic scaling is based on request rate, response latencies, and other application metrics.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	automaticScaling?: [...#AutomaticScalingParameters] @go(AutomaticScaling,[]AutomaticScalingParameters)

	// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	basicScaling?: [...#BasicScalingParameters] @go(BasicScaling,[]BasicScalingParameters)

	// If set to true, the service will be deleted if it is the last version.
	// +kubebuilder:validation:Optional
	deleteServiceOnDestroy?: null | bool @go(DeleteServiceOnDestroy,*bool)

	// Code and application artifacts that make up this version.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	deployment?: [...#DeploymentParameters] @go(Deployment,[]DeploymentParameters)

	// The entrypoint for the application.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	entrypoint?: [...#EntrypointParameters] @go(Entrypoint,[]EntrypointParameters)

	// Environment variables available to the application.
	// +kubebuilder:validation:Optional
	envVariables?: {[string]: null | string} @go(EnvVariables,map[string]*string)

	// An ordered list of URL-matching patterns that should be applied to incoming requests.
	// The first matching URL handles the request and other request handlers are not attempted.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	handlers?: [...#HandlersParameters] @go(Handlers,[]HandlersParameters)

	// A list of the types of messages that this application is able to receive.
	// Each value may be one of: INBOUND_SERVICE_MAIL, INBOUND_SERVICE_MAIL_BOUNCE, INBOUND_SERVICE_XMPP_ERROR, INBOUND_SERVICE_XMPP_MESSAGE, INBOUND_SERVICE_XMPP_SUBSCRIBE, INBOUND_SERVICE_XMPP_PRESENCE, INBOUND_SERVICE_CHANNEL_PRESENCE, INBOUND_SERVICE_WARMUP.
	// +kubebuilder:validation:Optional
	inboundServices?: [...null | string] @go(InboundServices,[]*string)

	// Instance class that is used to run this version. Valid values are
	// AutomaticScaling: F1, F2, F4, F4_1G
	// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
	// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
	// +kubebuilder:validation:Optional
	instanceClass?: null | string @go(InstanceClass,*string)

	// Configuration for third-party Python runtime libraries that are required by the application.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	libraries?: [...#LibrariesParameters] @go(Libraries,[]LibrariesParameters)

	// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	manualScaling?: [...#ManualScalingParameters] @go(ManualScaling,[]ManualScalingParameters)

	// If set to true, the application version will not be deleted.
	// +kubebuilder:validation:Optional
	noopOnDestroy?: null | bool @go(NoopOnDestroy,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Desired runtime. Example python27.
	// +kubebuilder:validation:Optional
	runtime?: null | string @go(Runtime,*string)

	// The version of the API in the given runtime environment.
	// Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard/<language>/config/appref
	// Substitute <language> with python, java, php, ruby, go or nodejs.
	// +kubebuilder:validation:Optional
	runtimeApiVersion?: null | string @go(RuntimeAPIVersion,*string)

	// AppEngine service resource
	// +kubebuilder:validation:Required
	service?: null | string @go(Service,*string)

	// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1.ServiceAccount
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("email",true)
	// +kubebuilder:validation:Optional
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// Whether multiple requests can be dispatched to this version at once.
	// +kubebuilder:validation:Optional
	threadsafe?: null | bool @go(Threadsafe,*bool)

	// Enables VPC connectivity for standard apps.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	vpcAccessConnector?: [...#VPCAccessConnectorParameters] @go(VPCAccessConnector,[]VPCAccessConnectorParameters)
}

#StandardSchedulerSettingsObservation: {
	// Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration.
	maxInstances?: null | float64 @go(MaxInstances,*float64)

	// Minimum number of instances to run for this version. Set to zero to disable minInstances configuration.
	minInstances?: null | float64 @go(MinInstances,*float64)

	// Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
	targetCpuUtilization?: null | float64 @go(TargetCPUUtilization,*float64)

	// Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
	targetThroughputUtilization?: null | float64 @go(TargetThroughputUtilization,*float64)
}

#StandardSchedulerSettingsParameters: {
	// Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration.
	// +kubebuilder:validation:Optional
	maxInstances?: null | float64 @go(MaxInstances,*float64)

	// Minimum number of instances to run for this version. Set to zero to disable minInstances configuration.
	// +kubebuilder:validation:Optional
	minInstances?: null | float64 @go(MinInstances,*float64)

	// Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
	// +kubebuilder:validation:Optional
	targetCpuUtilization?: null | float64 @go(TargetCPUUtilization,*float64)

	// Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
	// +kubebuilder:validation:Optional
	targetThroughputUtilization?: null | float64 @go(TargetThroughputUtilization,*float64)
}

#StaticFilesObservation: {
	// Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as
	// static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged
	// against both your code and static data storage resource quotas.
	applicationReadable?: null | bool @go(ApplicationReadable,*bool)

	// Time a static file served by this handler should be cached by web proxies and browsers.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example "3.5s".
	expiration?: null | string @go(Expiration,*string)

	// HTTP headers to use for all responses from these URLs.
	// An object containing a list of "key:value" value pairs.".
	httpHeaders?: {[string]: null | string} @go(HTTPHeaders,map[string]*string)

	// MIME type used to serve all files served by this handler.
	// Defaults to file-specific MIME types, which are derived from each file's filename extension.
	mimeType?: null | string @go(MimeType,*string)

	// Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
	path?: null | string @go(Path,*string)

	// Whether this handler should match the request if the file referenced by the handler does not exist.
	requireMatchingFile?: null | bool @go(RequireMatchingFile,*bool)

	// Regular expression that matches the file paths for all files that should be referenced by this handler.
	uploadPathRegex?: null | string @go(UploadPathRegex,*string)
}

#StaticFilesParameters: {
	// Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as
	// static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged
	// against both your code and static data storage resource quotas.
	// +kubebuilder:validation:Optional
	applicationReadable?: null | bool @go(ApplicationReadable,*bool)

	// Time a static file served by this handler should be cached by web proxies and browsers.
	// A duration in seconds with up to nine fractional digits, terminated by 's'. Example "3.5s".
	// +kubebuilder:validation:Optional
	expiration?: null | string @go(Expiration,*string)

	// HTTP headers to use for all responses from these URLs.
	// An object containing a list of "key:value" value pairs.".
	// +kubebuilder:validation:Optional
	httpHeaders?: {[string]: null | string} @go(HTTPHeaders,map[string]*string)

	// MIME type used to serve all files served by this handler.
	// Defaults to file-specific MIME types, which are derived from each file's filename extension.
	// +kubebuilder:validation:Optional
	mimeType?: null | string @go(MimeType,*string)

	// Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)

	// Whether this handler should match the request if the file referenced by the handler does not exist.
	// +kubebuilder:validation:Optional
	requireMatchingFile?: null | bool @go(RequireMatchingFile,*bool)

	// Regular expression that matches the file paths for all files that should be referenced by this handler.
	// +kubebuilder:validation:Optional
	uploadPathRegex?: null | string @go(UploadPathRegex,*string)
}

#VPCAccessConnectorObservation: {
	// The egress setting for the connector, controlling what traffic is diverted through it.
	egressSetting?: null | string @go(EgressSetting,*string)

	// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
	name?: null | string @go(Name,*string)
}

#VPCAccessConnectorParameters: {
	// The egress setting for the connector, controlling what traffic is diverted through it.
	// +kubebuilder:validation:Optional
	egressSetting?: null | string @go(EgressSetting,*string)

	// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#ZipObservation: {
	// files count
	filesCount?: null | float64 @go(FilesCount,*float64)

	// Source URL
	sourceUrl?: null | string @go(SourceURL,*string)
}

#ZipParameters: {
	// files count
	// +kubebuilder:validation:Optional
	filesCount?: null | float64 @go(FilesCount,*float64)

	// Source URL
	// +kubebuilder:validation:Required
	sourceUrl?: null | string @go(SourceURL,*string)
}

// StandardAppVersionSpec defines the desired state of StandardAppVersion
#StandardAppVersionSpec: {
	forProvider: #StandardAppVersionParameters @go(ForProvider)
}

// StandardAppVersionStatus defines the observed state of StandardAppVersion.
#StandardAppVersionStatus: {
	atProvider?: #StandardAppVersionObservation @go(AtProvider)
}

// StandardAppVersion is the Schema for the StandardAppVersions API. Standard App Version resource to create a new version of standard GAE Application.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#StandardAppVersion: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.deployment)",message="deployment is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.entrypoint)",message="entrypoint is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.runtime)",message="runtime is a required parameter"
	spec:    #StandardAppVersionSpec   @go(Spec)
	status?: #StandardAppVersionStatus @go(Status)
}

// StandardAppVersionList contains a list of StandardAppVersions
#StandardAppVersionList: {
	items: [...#StandardAppVersion] @go(Items,[]StandardAppVersion)
}
