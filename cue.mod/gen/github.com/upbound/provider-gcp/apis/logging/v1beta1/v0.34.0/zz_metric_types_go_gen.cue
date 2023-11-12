// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/logging/v1beta1

package v1beta1

#BucketOptionsObservation: {
	// Specifies a set of buckets with arbitrary widths.
	// Structure is documented below.
	explicitBuckets?: [...#ExplicitBucketsObservation] @go(ExplicitBuckets,[]ExplicitBucketsObservation)

	// Specifies an exponential sequence of buckets that have a width that is proportional to the value of
	// the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.
	// Structure is documented below.
	exponentialBuckets?: [...#ExponentialBucketsObservation] @go(ExponentialBuckets,[]ExponentialBucketsObservation)

	// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
	// Each bucket represents a constant absolute uncertainty on the specific value in the bucket.
	// Structure is documented below.
	linearBuckets?: [...#LinearBucketsObservation] @go(LinearBuckets,[]LinearBucketsObservation)
}

#BucketOptionsParameters: {
	// Specifies a set of buckets with arbitrary widths.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	explicitBuckets?: [...#ExplicitBucketsParameters] @go(ExplicitBuckets,[]ExplicitBucketsParameters)

	// Specifies an exponential sequence of buckets that have a width that is proportional to the value of
	// the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	exponentialBuckets?: [...#ExponentialBucketsParameters] @go(ExponentialBuckets,[]ExponentialBucketsParameters)

	// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
	// Each bucket represents a constant absolute uncertainty on the specific value in the bucket.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	linearBuckets?: [...#LinearBucketsParameters] @go(LinearBuckets,[]LinearBucketsParameters)
}

#ExplicitBucketsObservation: {
	// The values must be monotonically increasing.
	bounds?: [...null | float64] @go(Bounds,[]*float64)
}

#ExplicitBucketsParameters: {
	// The values must be monotonically increasing.
	// +kubebuilder:validation:Required
	bounds: [...null | float64] @go(Bounds,[]*float64)
}

#ExponentialBucketsObservation: {
	// Must be greater than 1.
	growthFactor?: null | float64 @go(GrowthFactor,*float64)

	// Must be greater than 0.
	numFiniteBuckets?: null | float64 @go(NumFiniteBuckets,*float64)

	// Must be greater than 0.
	scale?: null | float64 @go(Scale,*float64)
}

#ExponentialBucketsParameters: {
	// Must be greater than 1.
	// +kubebuilder:validation:Optional
	growthFactor?: null | float64 @go(GrowthFactor,*float64)

	// Must be greater than 0.
	// +kubebuilder:validation:Optional
	numFiniteBuckets?: null | float64 @go(NumFiniteBuckets,*float64)

	// Must be greater than 0.
	// +kubebuilder:validation:Optional
	scale?: null | float64 @go(Scale,*float64)
}

#LabelsObservation: {
	// A human-readable description for the label.
	description?: null | string @go(Description,*string)

	// The label key.
	key?: null | string @go(Key,*string)

	// Whether the measurement is an integer, a floating-point number, etc.
	// Some combinations of metricKind and valueType might not be supported.
	// For counter metrics, set this to INT64.
	// Possible values are: BOOL, INT64, DOUBLE, STRING, DISTRIBUTION, MONEY.
	valueType?: null | string @go(ValueType,*string)
}

#LabelsParameters: {
	// A human-readable description for the label.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The label key.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// Whether the measurement is an integer, a floating-point number, etc.
	// Some combinations of metricKind and valueType might not be supported.
	// For counter metrics, set this to INT64.
	// Possible values are: BOOL, INT64, DOUBLE, STRING, DISTRIBUTION, MONEY.
	// +kubebuilder:validation:Optional
	valueType?: null | string @go(ValueType,*string)
}

#LinearBucketsObservation: {
	// Must be greater than 0.
	numFiniteBuckets?: null | float64 @go(NumFiniteBuckets,*float64)

	// Lower bound of the first bucket.
	offset?: null | float64 @go(Offset,*float64)

	// Must be greater than 0.
	width?: null | float64 @go(Width,*float64)
}

#LinearBucketsParameters: {
	// Must be greater than 0.
	// +kubebuilder:validation:Optional
	numFiniteBuckets?: null | float64 @go(NumFiniteBuckets,*float64)

	// Lower bound of the first bucket.
	// +kubebuilder:validation:Optional
	offset?: null | float64 @go(Offset,*float64)

	// Must be greater than 0.
	// +kubebuilder:validation:Optional
	width?: null | float64 @go(Width,*float64)
}

#MetricDescriptorObservation: {
	// A concise name for the metric, which can be displayed in user interfaces. Use sentence case
	// without an ending period, for example "Request count". This field is optional but it is
	// recommended to be set for any metrics associated with user-visible concepts, such as Quota.
	displayName?: null | string @go(DisplayName,*string)

	// The set of labels that can be used to describe a specific instance of this metric type. For
	// example, the appengine.googleapis.com/http/server/response_latencies metric type has a label
	// for the HTTP response code, response_code, so you can look at latencies for successful responses
	// or just for responses that failed.
	// Structure is documented below.
	labels?: [...#LabelsObservation] @go(Labels,[]LabelsObservation)

	// Whether the metric records instantaneous values, changes to a value, etc.
	// Some combinations of metricKind and valueType might not be supported.
	// For counter metrics, set this to DELTA.
	// Possible values are: DELTA, GAUGE, CUMULATIVE.
	metricKind?: null | string @go(MetricKind,*string)

	// The unit in which the metric value is reported. It is only applicable if the valueType is
	// INT64, DOUBLE, or DISTRIBUTION. The supported units are a subset of
	// The Unified Code for Units of Measure standard
	unit?: null | string @go(Unit,*string)

	// Whether the measurement is an integer, a floating-point number, etc.
	// Some combinations of metricKind and valueType might not be supported.
	// For counter metrics, set this to INT64.
	// Possible values are: BOOL, INT64, DOUBLE, STRING, DISTRIBUTION, MONEY.
	valueType?: null | string @go(ValueType,*string)
}

#MetricDescriptorParameters: {
	// A concise name for the metric, which can be displayed in user interfaces. Use sentence case
	// without an ending period, for example "Request count". This field is optional but it is
	// recommended to be set for any metrics associated with user-visible concepts, such as Quota.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The set of labels that can be used to describe a specific instance of this metric type. For
	// example, the appengine.googleapis.com/http/server/response_latencies metric type has a label
	// for the HTTP response code, response_code, so you can look at latencies for successful responses
	// or just for responses that failed.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	labels?: [...#LabelsParameters] @go(Labels,[]LabelsParameters)

	// Whether the metric records instantaneous values, changes to a value, etc.
	// Some combinations of metricKind and valueType might not be supported.
	// For counter metrics, set this to DELTA.
	// Possible values are: DELTA, GAUGE, CUMULATIVE.
	// +kubebuilder:validation:Required
	metricKind?: null | string @go(MetricKind,*string)

	// The unit in which the metric value is reported. It is only applicable if the valueType is
	// INT64, DOUBLE, or DISTRIBUTION. The supported units are a subset of
	// The Unified Code for Units of Measure standard
	// +kubebuilder:validation:Optional
	unit?: null | string @go(Unit,*string)

	// Whether the measurement is an integer, a floating-point number, etc.
	// Some combinations of metricKind and valueType might not be supported.
	// For counter metrics, set this to INT64.
	// Possible values are: BOOL, INT64, DOUBLE, STRING, DISTRIBUTION, MONEY.
	// +kubebuilder:validation:Required
	valueType?: null | string @go(ValueType,*string)
}

#MetricObservation: {
	// The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
	// are supported. The bucket has to be in the same project as the metric.
	bucketName?: null | string @go(BucketName,*string)

	// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
	// describes the bucket boundaries used to create a histogram of the extracted values.
	// Structure is documented below.
	bucketOptions?: [...#BucketOptionsObservation] @go(BucketOptions,[]BucketOptionsObservation)

	// A description of this metric, which is used in documentation. The maximum length of the
	// description is 8000 characters.
	description?: null | string @go(Description,*string)

	// If set to True, then this metric is disabled and it does not generate any points.
	disabled?: null | bool @go(Disabled,*bool)

	// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
	// is used to match log entries.
	filter?: null | string @go(Filter,*string)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// A map from a label key string to an extractor expression which is used to extract data from a log
	// entry field and assign as the label value. Each label key specified in the LabelDescriptor must
	// have an associated extractor expression in this map. The syntax of the extractor expression is
	// the same as for the valueExtractor field.
	labelExtractors?: {[string]: null | string} @go(LabelExtractors,map[string]*string)

	// The optional metric descriptor associated with the logs-based metric.
	// If unspecified, it uses a default metric descriptor with a DELTA metric kind,
	// INT64 value type, with no labels and a unit of "1". Such a metric counts the
	// number of log entries matching the filter expression.
	// Structure is documented below.
	metricDescriptor?: [...#MetricDescriptorObservation] @go(MetricDescriptor,[]MetricDescriptorObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A valueExtractor is required when using a distribution logs-based metric to extract the values to
	// record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
	// REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
	// the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
	// (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
	// log entry field. The value of the field is converted to a string before applying the regex. It is an
	// error to specify a regex that does not include exactly one capture group.
	valueExtractor?: null | string @go(ValueExtractor,*string)
}

#MetricParameters: {
	// The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
	// are supported. The bucket has to be in the same project as the metric.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/logging/v1beta1.ProjectBucketConfig
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	bucketName?: null | string @go(BucketName,*string)

	// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
	// describes the bucket boundaries used to create a histogram of the extracted values.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	bucketOptions?: [...#BucketOptionsParameters] @go(BucketOptions,[]BucketOptionsParameters)

	// A description of this metric, which is used in documentation. The maximum length of the
	// description is 8000 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// If set to True, then this metric is disabled and it does not generate any points.
	// +kubebuilder:validation:Optional
	disabled?: null | bool @go(Disabled,*bool)

	// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
	// is used to match log entries.
	// +kubebuilder:validation:Optional
	filter?: null | string @go(Filter,*string)

	// A map from a label key string to an extractor expression which is used to extract data from a log
	// entry field and assign as the label value. Each label key specified in the LabelDescriptor must
	// have an associated extractor expression in this map. The syntax of the extractor expression is
	// the same as for the valueExtractor field.
	// +kubebuilder:validation:Optional
	labelExtractors?: {[string]: null | string} @go(LabelExtractors,map[string]*string)

	// The optional metric descriptor associated with the logs-based metric.
	// If unspecified, it uses a default metric descriptor with a DELTA metric kind,
	// INT64 value type, with no labels and a unit of "1". Such a metric counts the
	// number of log entries matching the filter expression.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	metricDescriptor?: [...#MetricDescriptorParameters] @go(MetricDescriptor,[]MetricDescriptorParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// A valueExtractor is required when using a distribution logs-based metric to extract the values to
	// record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
	// REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
	// the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
	// (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
	// log entry field. The value of the field is converted to a string before applying the regex. It is an
	// error to specify a regex that does not include exactly one capture group.
	// +kubebuilder:validation:Optional
	valueExtractor?: null | string @go(ValueExtractor,*string)
}

// MetricSpec defines the desired state of Metric
#MetricSpec: {
	forProvider: #MetricParameters @go(ForProvider)
}

// MetricStatus defines the observed state of Metric.
#MetricStatus: {
	atProvider?: #MetricObservation @go(AtProvider)
}

// Metric is the Schema for the Metrics API. Logs-based metric can also be used to extract values from logs and create a a distribution of the values.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Metric: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.filter)",message="filter is a required parameter"
	spec:    #MetricSpec   @go(Spec)
	status?: #MetricStatus @go(Status)
}

// MetricList contains a list of Metrics
#MetricList: {
	items: [...#Metric] @go(Items,[]Metric)
}
