// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/monitoring/v1beta1

package v1beta1

#LabelsObservation: {
	// A human-readable description for the label.
	description?: null | string @go(Description,*string)

	// The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]*
	key?: null | string @go(Key,*string)

	// The type of data that can be assigned to the label.
	// Default value is STRING.
	// Possible values are: STRING, BOOL, INT64.
	valueType?: null | string @go(ValueType,*string)
}

#LabelsParameters: {
	// A human-readable description for the label.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]*
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// The type of data that can be assigned to the label.
	// Default value is STRING.
	// Possible values are: STRING, BOOL, INT64.
	// +kubebuilder:validation:Optional
	valueType?: null | string @go(ValueType,*string)
}

#MetadataObservation: {
	// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In [duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration).
	ingestDelay?: null | string @go(IngestDelay,*string)

	// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In [duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration).
	samplePeriod?: null | string @go(SamplePeriod,*string)
}

#MetadataParameters: {
	// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In [duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration).
	// +kubebuilder:validation:Optional
	ingestDelay?: null | string @go(IngestDelay,*string)

	// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In [duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration).
	// +kubebuilder:validation:Optional
	samplePeriod?: null | string @go(SamplePeriod,*string)
}

#MetricDescriptorObservation: {
	// A detailed description of the metric, which can be used in documentation.
	description?: null | string @go(Description,*string)

	// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
	// Structure is documented below.
	labels?: [...#LabelsObservation] @go(Labels,[]LabelsObservation)

	// The launch stage of the metric definition.
	// Possible values are: LAUNCH_STAGE_UNSPECIFIED, UNIMPLEMENTED, PRELAUNCH, EARLY_ACCESS, ALPHA, BETA, GA, DEPRECATED.
	launchStage?: null | string @go(LaunchStage,*string)

	// Metadata which can be used to guide usage of the metric.
	// Structure is documented below.
	metadata?: [...#MetadataObservation] @go(Metadata,[]MetadataObservation)

	// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
	// Possible values are: METRIC_KIND_UNSPECIFIED, GAUGE, DELTA, CUMULATIVE.
	metricKind?: null | string @go(MetricKind,*string)

	// If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here. This field allows time series to be associated with the intersection of this metric type and the monitored resource types in this list.
	monitoredResourceTypes?: [...null | string] @go(MonitoredResourceTypes,[]*string)

	// The resource name of the metric descriptor.
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
	type?: null | string @go(Type,*string)

	// The units in which the metric value is reported. It is only applicable if the
	// valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
	// the stored metric values.
	// Different systems may scale the values to be more easily displayed (so a value of
	// 0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
	// 3.5MBy). However, if the unit is KBy, then the value of the metric is always in
	// thousands of bytes, no matter how it may be displayed.
	// If you want a custom metric to record the exact number of CPU-seconds used by a job,
	// you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
	// 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
	// 12005.
	// Alternatively, if you want a custom metric to record data in a more granular way, you
	// can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
	// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
	// The supported units are a subset of The Unified Code for Units of Measure standard.
	// More info can be found in the API documentation
	// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors).
	unit?: null | string @go(Unit,*string)

	// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
	// Possible values are: BOOL, INT64, DOUBLE, STRING, DISTRIBUTION.
	valueType?: null | string @go(ValueType,*string)
}

#MetricDescriptorParameters: {
	// A detailed description of the metric, which can be used in documentation.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	labels?: [...#LabelsParameters] @go(Labels,[]LabelsParameters)

	// The launch stage of the metric definition.
	// Possible values are: LAUNCH_STAGE_UNSPECIFIED, UNIMPLEMENTED, PRELAUNCH, EARLY_ACCESS, ALPHA, BETA, GA, DEPRECATED.
	// +kubebuilder:validation:Optional
	launchStage?: null | string @go(LaunchStage,*string)

	// Metadata which can be used to guide usage of the metric.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	metadata?: [...#MetadataParameters] @go(Metadata,[]MetadataParameters)

	// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
	// Possible values are: METRIC_KIND_UNSPECIFIED, GAUGE, DELTA, CUMULATIVE.
	// +kubebuilder:validation:Optional
	metricKind?: null | string @go(MetricKind,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// The units in which the metric value is reported. It is only applicable if the
	// valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
	// the stored metric values.
	// Different systems may scale the values to be more easily displayed (so a value of
	// 0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
	// 3.5MBy). However, if the unit is KBy, then the value of the metric is always in
	// thousands of bytes, no matter how it may be displayed.
	// If you want a custom metric to record the exact number of CPU-seconds used by a job,
	// you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
	// 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
	// 12005.
	// Alternatively, if you want a custom metric to record data in a more granular way, you
	// can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
	// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
	// The supported units are a subset of The Unified Code for Units of Measure standard.
	// More info can be found in the API documentation
	// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors).
	// +kubebuilder:validation:Optional
	unit?: null | string @go(Unit,*string)

	// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
	// Possible values are: BOOL, INT64, DOUBLE, STRING, DISTRIBUTION.
	// +kubebuilder:validation:Optional
	valueType?: null | string @go(ValueType,*string)
}

// MetricDescriptorSpec defines the desired state of MetricDescriptor
#MetricDescriptorSpec: {
	forProvider: #MetricDescriptorParameters @go(ForProvider)
}

// MetricDescriptorStatus defines the observed state of MetricDescriptor.
#MetricDescriptorStatus: {
	atProvider?: #MetricDescriptorObservation @go(AtProvider)
}

// MetricDescriptor is the Schema for the MetricDescriptors API. Defines a metric type and its schema.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#MetricDescriptor: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.description)",message="description is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.displayName)",message="displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.metricKind)",message="metricKind is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.type)",message="type is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.valueType)",message="valueType is a required parameter"
	spec:    #MetricDescriptorSpec   @go(Spec)
	status?: #MetricDescriptorStatus @go(Status)
}

// MetricDescriptorList contains a list of MetricDescriptors
#MetricDescriptorList: {
	items: [...#MetricDescriptor] @go(Items,[]MetricDescriptor)
}
