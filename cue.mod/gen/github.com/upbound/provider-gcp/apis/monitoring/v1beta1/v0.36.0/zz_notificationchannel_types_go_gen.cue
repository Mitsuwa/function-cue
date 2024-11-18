// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/monitoring/v1beta1

package v1beta1

#NotificationChannelInitParameters: {
	// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
	description?: null | string @go(Description,*string)

	// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
	displayName?: null | string @go(DisplayName,*string)

	// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
	enabled?: null | bool @go(Enabled,*bool)

	// If true, the notification channel will be deleted regardless
	// of its use in alert policies (the policies will be updated
	// to remove the channel). If false, channels that are still
	// referenced by an existing alerting policy will fail to be
	// deleted in a delete operation.
	forceDelete?: null | bool @go(ForceDelete,*bool)

	// Configuration fields that define the channel and its behavior. The
	// permissible and required labels are specified in the
	// NotificationChannelDescriptor corresponding to the type field. They can also be configured via
	// the sensitive_labels block, but cannot be configured in both places.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Different notification type behaviors are configured primarily using the the labels field on this
	// resource. This block contains the labels which contain secrets or passwords so that they can be marked
	// sensitive and hidden from plan output. The name of the field, eg: password, will be the key
	// in the labels map in the api request.
	// Credentials may not be specified in both locations and will cause an error. Changing from one location
	// to a different credential configuration in the config will require an apply to update state.
	// Structure is documented below.
	sensitiveLabels?: [...#SensitiveLabelsInitParameters] @go(SensitiveLabels,[]SensitiveLabelsInitParameters)

	// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
	type?: null | string @go(Type,*string)

	// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
	userLabels?: {[string]: null | string} @go(UserLabels,map[string]*string)
}

#NotificationChannelObservation: {
	// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
	description?: null | string @go(Description,*string)

	// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
	displayName?: null | string @go(DisplayName,*string)

	// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
	enabled?: null | bool @go(Enabled,*bool)

	// If true, the notification channel will be deleted regardless
	// of its use in alert policies (the policies will be updated
	// to remove the channel). If false, channels that are still
	// referenced by an existing alerting policy will fail to be
	// deleted in a delete operation.
	forceDelete?: null | bool @go(ForceDelete,*bool)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// Configuration fields that define the channel and its behavior. The
	// permissible and required labels are specified in the
	// NotificationChannelDescriptor corresponding to the type field. They can also be configured via
	// the sensitive_labels block, but cannot be configured in both places.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The full REST resource name for this channel. The syntax is:
	// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
	// The [CHANNEL_ID] is automatically assigned by the server on creation.
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
	type?: null | string @go(Type,*string)

	// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
	userLabels?: {[string]: null | string} @go(UserLabels,map[string]*string)

	// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
	verificationStatus?: null | string @go(VerificationStatus,*string)
}

#NotificationChannelParameters: {
	// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// If true, the notification channel will be deleted regardless
	// of its use in alert policies (the policies will be updated
	// to remove the channel). If false, channels that are still
	// referenced by an existing alerting policy will fail to be
	// deleted in a delete operation.
	// +kubebuilder:validation:Optional
	forceDelete?: null | bool @go(ForceDelete,*bool)

	// Configuration fields that define the channel and its behavior. The
	// permissible and required labels are specified in the
	// NotificationChannelDescriptor corresponding to the type field. They can also be configured via
	// the sensitive_labels block, but cannot be configured in both places.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
	// +kubebuilder:validation:Optional
	userLabels?: {[string]: null | string} @go(UserLabels,map[string]*string)
}

#SensitiveLabelsInitParameters: {
}

#SensitiveLabelsObservation: {
}

// NotificationChannelSpec defines the desired state of NotificationChannel
#NotificationChannelSpec: {
	forProvider: #NotificationChannelParameters @go(ForProvider)

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
	initProvider?: #NotificationChannelInitParameters @go(InitProvider)
}

// NotificationChannelStatus defines the observed state of NotificationChannel.
#NotificationChannelStatus: {
	atProvider?: #NotificationChannelObservation @go(AtProvider)
}

// NotificationChannel is the Schema for the NotificationChannels API. A NotificationChannel is a medium through which an alert is delivered when a policy violation is detected.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#NotificationChannel: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.type) || has(self.initProvider.type)",message="type is a required parameter"
	spec:    #NotificationChannelSpec   @go(Spec)
	status?: #NotificationChannelStatus @go(Status)
}

// NotificationChannelList contains a list of NotificationChannels
#NotificationChannelList: {
	items: [...#NotificationChannel] @go(Items,[]NotificationChannel)
}
