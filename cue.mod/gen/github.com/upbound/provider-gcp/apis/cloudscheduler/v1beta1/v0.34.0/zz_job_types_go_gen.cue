// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudscheduler/v1beta1

package v1beta1

#AppEngineHTTPTargetObservation: {
	// App Engine Routing setting for the job.
	// Structure is documented below.
	appEngineRouting?: [...#AppEngineRoutingObservation] @go(AppEngineRouting,[]AppEngineRoutingObservation)

	// HTTP request body.
	// A request body is allowed only if the HTTP method is POST or PUT.
	// It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
	// A base64-encoded string.
	body?: null | string @go(Body,*string)

	// Which HTTP method to use for the request.
	httpMethod?: null | string @go(HTTPMethod,*string)

	// HTTP request headers.
	// This map contains the header field names and values.
	// Headers can be set when the job is created.
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// The relative URI.
	// The relative URL must begin with "/" and must be a valid HTTP relative URL.
	// It can contain a path, query string arguments, and # fragments.
	// If the relative URL is empty, then the root path "/" will be used.
	// No spaces are allowed, and the maximum length allowed is 2083 characters
	relativeUri?: null | string @go(RelativeURI,*string)
}

#AppEngineHTTPTargetParameters: {
	// App Engine Routing setting for the job.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	appEngineRouting?: [...#AppEngineRoutingParameters] @go(AppEngineRouting,[]AppEngineRoutingParameters)

	// HTTP request body.
	// A request body is allowed only if the HTTP method is POST or PUT.
	// It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
	// A base64-encoded string.
	// +kubebuilder:validation:Optional
	body?: null | string @go(Body,*string)

	// Which HTTP method to use for the request.
	// +kubebuilder:validation:Optional
	httpMethod?: null | string @go(HTTPMethod,*string)

	// HTTP request headers.
	// This map contains the header field names and values.
	// Headers can be set when the job is created.
	// +kubebuilder:validation:Optional
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// The relative URI.
	// The relative URL must begin with "/" and must be a valid HTTP relative URL.
	// It can contain a path, query string arguments, and # fragments.
	// If the relative URL is empty, then the root path "/" will be used.
	// No spaces are allowed, and the maximum length allowed is 2083 characters
	// +kubebuilder:validation:Required
	relativeUri?: null | string @go(RelativeURI,*string)
}

#AppEngineRoutingObservation: {
	// App instance.
	// By default, the job is sent to an instance which is available when the job is attempted.
	instance?: null | string @go(Instance,*string)

	// App service.
	// By default, the job is sent to the service which is the default service when the job is attempted.
	service?: null | string @go(Service,*string)

	// App version.
	// By default, the job is sent to the version which is the default version when the job is attempted.
	version?: null | string @go(Version,*string)
}

#AppEngineRoutingParameters: {
	// App instance.
	// By default, the job is sent to an instance which is available when the job is attempted.
	// +kubebuilder:validation:Optional
	instance?: null | string @go(Instance,*string)

	// App service.
	// By default, the job is sent to the service which is the default service when the job is attempted.
	// +kubebuilder:validation:Optional
	service?: null | string @go(Service,*string)

	// App version.
	// By default, the job is sent to the version which is the default version when the job is attempted.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#HTTPTargetObservation: {
	// HTTP request body.
	// A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
	// It is an error to set body on a job with an incompatible HttpMethod.
	// A base64-encoded string.
	body?: null | string @go(Body,*string)

	// Which HTTP method to use for the request.
	httpMethod?: null | string @go(HTTPMethod,*string)

	// This map contains the header field names and values.
	// Repeated headers are not supported, but a header value can contain commas.
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// Contains information needed for generating an OAuth token.
	// This type of authorization should be used when sending requests to a GCP endpoint.
	// Structure is documented below.
	oauthToken?: [...#OAuthTokenObservation] @go(OAuthToken,[]OAuthTokenObservation)

	// Contains information needed for generating an OpenID Connect token.
	// This type of authorization should be used when sending requests to third party endpoints or Cloud Run.
	// Structure is documented below.
	oidcToken?: [...#OidcTokenObservation] @go(OidcToken,[]OidcTokenObservation)

	// The full URI path that the request will be sent to.
	uri?: null | string @go(URI,*string)
}

#HTTPTargetParameters: {
	// HTTP request body.
	// A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
	// It is an error to set body on a job with an incompatible HttpMethod.
	// A base64-encoded string.
	// +kubebuilder:validation:Optional
	body?: null | string @go(Body,*string)

	// Which HTTP method to use for the request.
	// +kubebuilder:validation:Optional
	httpMethod?: null | string @go(HTTPMethod,*string)

	// This map contains the header field names and values.
	// Repeated headers are not supported, but a header value can contain commas.
	// +kubebuilder:validation:Optional
	headers?: {[string]: null | string} @go(Headers,map[string]*string)

	// Contains information needed for generating an OAuth token.
	// This type of authorization should be used when sending requests to a GCP endpoint.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	oauthToken?: [...#OAuthTokenParameters] @go(OAuthToken,[]OAuthTokenParameters)

	// Contains information needed for generating an OpenID Connect token.
	// This type of authorization should be used when sending requests to third party endpoints or Cloud Run.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	oidcToken?: [...#OidcTokenParameters] @go(OidcToken,[]OidcTokenParameters)

	// The full URI path that the request will be sent to.
	// +kubebuilder:validation:Required
	uri?: null | string @go(URI,*string)
}

#JobObservation: {
	// App Engine HTTP target.
	// If the job providers a App Engine HTTP target the cron will
	// send a request to the service instance
	// Structure is documented below.
	appEngineHttpTarget?: [...#AppEngineHTTPTargetObservation] @go(AppEngineHTTPTarget,[]AppEngineHTTPTargetObservation)

	// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
	// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
	// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
	// The allowed duration for this deadline is:
	attemptDeadline?: null | string @go(AttemptDeadline,*string)

	// A human-readable description for the job.
	// This string must not contain more than 500 characters.
	description?: null | string @go(Description,*string)

	// HTTP target.
	// If the job providers a http_target the cron will
	// send a request to the targeted url
	// Structure is documented below.
	httpTarget?: [...#HTTPTargetObservation] @go(HTTPTarget,[]HTTPTargetObservation)

	// an identifier for the resource with format projects/{{project}}/locations/{{region}}/jobs/{{name}}
	id?: null | string @go(ID,*string)

	// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
	paused?: null | bool @go(Paused,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Pub/Sub target
	// If the job providers a Pub/Sub target the cron will publish
	// a message to the provided topic
	// Structure is documented below.
	pubsubTarget?: [...#PubsubTargetObservation] @go(PubsubTarget,[]PubsubTargetObservation)

	// Region where the scheduler job resides.
	region?: null | string @go(Region,*string)

	// By default, if a job does not complete successfully,
	// meaning that an acknowledgement is not received from the handler,
	// then it will be retried with exponential backoff according to the settings
	// Structure is documented below.
	retryConfig?: [...#RetryConfigObservation] @go(RetryConfig,[]RetryConfigObservation)

	// Describes the schedule on which the job will be executed.
	schedule?: null | string @go(Schedule,*string)

	// State of the job.
	state?: null | string @go(State,*string)

	// Specifies the time zone to be used in interpreting schedule.
	// The value of this field must be a time zone name from the tz database.
	timeZone?: null | string @go(TimeZone,*string)
}

#JobParameters: {
	// App Engine HTTP target.
	// If the job providers a App Engine HTTP target the cron will
	// send a request to the service instance
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	appEngineHttpTarget?: [...#AppEngineHTTPTargetParameters] @go(AppEngineHTTPTarget,[]AppEngineHTTPTargetParameters)

	// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
	// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
	// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
	// The allowed duration for this deadline is:
	// +kubebuilder:validation:Optional
	attemptDeadline?: null | string @go(AttemptDeadline,*string)

	// A human-readable description for the job.
	// This string must not contain more than 500 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// HTTP target.
	// If the job providers a http_target the cron will
	// send a request to the targeted url
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	httpTarget?: [...#HTTPTargetParameters] @go(HTTPTarget,[]HTTPTargetParameters)

	// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
	// +kubebuilder:validation:Optional
	paused?: null | bool @go(Paused,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Pub/Sub target
	// If the job providers a Pub/Sub target the cron will publish
	// a message to the provided topic
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	pubsubTarget?: [...#PubsubTargetParameters] @go(PubsubTarget,[]PubsubTargetParameters)

	// Region where the scheduler job resides.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// By default, if a job does not complete successfully,
	// meaning that an acknowledgement is not received from the handler,
	// then it will be retried with exponential backoff according to the settings
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	retryConfig?: [...#RetryConfigParameters] @go(RetryConfig,[]RetryConfigParameters)

	// Describes the schedule on which the job will be executed.
	// +kubebuilder:validation:Optional
	schedule?: null | string @go(Schedule,*string)

	// Specifies the time zone to be used in interpreting schedule.
	// The value of this field must be a time zone name from the tz database.
	// +kubebuilder:validation:Optional
	timeZone?: null | string @go(TimeZone,*string)
}

#OAuthTokenObservation: {
	// OAuth scope to be used for generating OAuth access token. If not specified,
	// "https://www.googleapis.com/auth/cloud-platform" will be used.
	scope?: null | string @go(Scope,*string)

	// Service account email to be used for generating OAuth token.
	// The service account must be within the same project as the job.
	serviceAccountEmail?: null | string @go(ServiceAccountEmail,*string)
}

#OAuthTokenParameters: {
	// OAuth scope to be used for generating OAuth access token. If not specified,
	// "https://www.googleapis.com/auth/cloud-platform" will be used.
	// +kubebuilder:validation:Optional
	scope?: null | string @go(Scope,*string)

	// Service account email to be used for generating OAuth token.
	// The service account must be within the same project as the job.
	// +kubebuilder:validation:Required
	serviceAccountEmail?: null | string @go(ServiceAccountEmail,*string)
}

#OidcTokenObservation: {
	// Audience to be used when generating OIDC token. If not specified,
	// the URI specified in target will be used.
	audience?: null | string @go(Audience,*string)

	// Service account email to be used for generating OAuth token.
	// The service account must be within the same project as the job.
	serviceAccountEmail?: null | string @go(ServiceAccountEmail,*string)
}

#OidcTokenParameters: {
	// Audience to be used when generating OIDC token. If not specified,
	// the URI specified in target will be used.
	// +kubebuilder:validation:Optional
	audience?: null | string @go(Audience,*string)

	// Service account email to be used for generating OAuth token.
	// The service account must be within the same project as the job.
	// +kubebuilder:validation:Required
	serviceAccountEmail?: null | string @go(ServiceAccountEmail,*string)
}

#PubsubTargetObservation: {
	// Attributes for PubsubMessage.
	// Pubsub message must contain either non-empty data, or at least one attribute.
	attributes?: {[string]: null | string} @go(Attributes,map[string]*string)

	// The message payload for PubsubMessage.
	// Pubsub message must contain either non-empty data, or at least one attribute.
	// A base64-encoded string.
	data?: null | string @go(Data,*string)

	// The full resource name for the Cloud Pub/Sub topic to which
	// messages will be published when a job is delivered. ~>NOTE:
	// The topic name must be in the same format as required by PubSub's
	// PublishRequest.name, e.g. projects/my-project/topics/my-topic.
	topicName?: null | string @go(TopicName,*string)
}

#PubsubTargetParameters: {
	// Attributes for PubsubMessage.
	// Pubsub message must contain either non-empty data, or at least one attribute.
	// +kubebuilder:validation:Optional
	attributes?: {[string]: null | string} @go(Attributes,map[string]*string)

	// The message payload for PubsubMessage.
	// Pubsub message must contain either non-empty data, or at least one attribute.
	// A base64-encoded string.
	// +kubebuilder:validation:Optional
	data?: null | string @go(Data,*string)

	// The full resource name for the Cloud Pub/Sub topic to which
	// messages will be published when a job is delivered. ~>NOTE:
	// The topic name must be in the same format as required by PubSub's
	// PublishRequest.name, e.g. projects/my-project/topics/my-topic.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/pubsub/v1beta1.Topic
	// +kubebuilder:validation:Optional
	topicName?: null | string @go(TopicName,*string)
}

#RetryConfigObservation: {
	// The maximum amount of time to wait before retrying a job after it fails.
	// A duration in seconds with up to nine fractional digits, terminated by 's'.
	maxBackoffDuration?: null | string @go(MaxBackoffDuration,*string)

	// The time between retries will double maxDoublings times.
	// A job's retry interval starts at minBackoffDuration,
	// then doubles maxDoublings times, then increases linearly,
	// and finally retries retries at intervals of maxBackoffDuration up to retryCount times.
	maxDoublings?: null | float64 @go(MaxDoublings,*float64)

	// The time limit for retrying a failed job, measured from time when an execution was first attempted.
	// If specified with retryCount, the job will be retried until both limits are reached.
	// A duration in seconds with up to nine fractional digits, terminated by 's'.
	maxRetryDuration?: null | string @go(MaxRetryDuration,*string)

	// The minimum amount of time to wait before retrying a job after it fails.
	// A duration in seconds with up to nine fractional digits, terminated by 's'.
	minBackoffDuration?: null | string @go(MinBackoffDuration,*string)

	// The number of attempts that the system will make to run a
	// job using the exponential backoff procedure described by maxDoublings.
	// Values greater than 5 and negative values are not allowed.
	retryCount?: null | float64 @go(RetryCount,*float64)
}

#RetryConfigParameters: {
	// The maximum amount of time to wait before retrying a job after it fails.
	// A duration in seconds with up to nine fractional digits, terminated by 's'.
	// +kubebuilder:validation:Optional
	maxBackoffDuration?: null | string @go(MaxBackoffDuration,*string)

	// The time between retries will double maxDoublings times.
	// A job's retry interval starts at minBackoffDuration,
	// then doubles maxDoublings times, then increases linearly,
	// and finally retries retries at intervals of maxBackoffDuration up to retryCount times.
	// +kubebuilder:validation:Optional
	maxDoublings?: null | float64 @go(MaxDoublings,*float64)

	// The time limit for retrying a failed job, measured from time when an execution was first attempted.
	// If specified with retryCount, the job will be retried until both limits are reached.
	// A duration in seconds with up to nine fractional digits, terminated by 's'.
	// +kubebuilder:validation:Optional
	maxRetryDuration?: null | string @go(MaxRetryDuration,*string)

	// The minimum amount of time to wait before retrying a job after it fails.
	// A duration in seconds with up to nine fractional digits, terminated by 's'.
	// +kubebuilder:validation:Optional
	minBackoffDuration?: null | string @go(MinBackoffDuration,*string)

	// The number of attempts that the system will make to run a
	// job using the exponential backoff procedure described by maxDoublings.
	// Values greater than 5 and negative values are not allowed.
	// +kubebuilder:validation:Optional
	retryCount?: null | float64 @go(RetryCount,*float64)
}

// JobSpec defines the desired state of Job
#JobSpec: {
	forProvider: #JobParameters @go(ForProvider)
}

// JobStatus defines the observed state of Job.
#JobStatus: {
	atProvider?: #JobObservation @go(AtProvider)
}

// Job is the Schema for the Jobs API. A scheduled job that can publish a PubSub message or an HTTP request every X interval of time, using a crontab format string.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Job: {
	spec:    #JobSpec   @go(Spec)
	status?: #JobStatus @go(Status)
}

// JobList contains a list of Jobs
#JobList: {
	items: [...#Job] @go(Items,[]Job)
}
