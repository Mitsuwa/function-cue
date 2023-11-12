// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/devices/v1beta1

package v1beta1

#CloudToDeviceObservation: {
	// The default time to live for cloud-to-device messages, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 48 hours. Defaults to PT1H.
	defaultTtl?: null | string @go(DefaultTTL,*string)

	// A feedback block as defined below.
	feedback?: [...#FeedbackObservation] @go(Feedback,[]FeedbackObservation)

	// The maximum delivery count for cloud-to-device per-device queues. This value must be between 1 and 100. Defaults to 10.
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)
}

#CloudToDeviceParameters: {
	// The default time to live for cloud-to-device messages, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 48 hours. Defaults to PT1H.
	// +kubebuilder:validation:Optional
	defaultTtl?: null | string @go(DefaultTTL,*string)

	// A feedback block as defined below.
	// +kubebuilder:validation:Optional
	feedback?: [...#FeedbackParameters] @go(Feedback,[]FeedbackParameters)

	// The maximum delivery count for cloud-to-device per-device queues. This value must be between 1 and 100. Defaults to 10.
	// +kubebuilder:validation:Optional
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)
}

#EndpointObservation: {
	// The type used to authenticate against the endpoint. Possible values are keyBased and identityBased. Defaults to keyBased.
	authenticationType?: null | string @go(AuthenticationType,*string)

	// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. This attribute is applicable for endpoint type AzureIotHub.StorageContainer.
	batchFrequencyInSeconds?: null | float64 @go(BatchFrequencyInSeconds,*float64)

	// The name of storage container in the storage account. This attribute is mandatory for endpoint type AzureIotHub.StorageContainer.
	containerName?: null | string @go(ContainerName,*string)

	// Encoding that is used to serialize messages to blobs. Supported values are Avro, AvroDeflate and JSON. Default value is Avro. This attribute is applicable for endpoint type AzureIotHub.StorageContainer. Changing this forces a new resource to be created.
	encoding?: null | string @go(Encoding,*string)

	// URI of the Service Bus or Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when authentication_type is identityBased for endpoint type AzureIotHub.ServiceBusQueue, AzureIotHub.ServiceBusTopic or AzureIotHub.EventHub.
	endpointUri?: null | string @go(EndpointURI,*string)

	// Name of the Service Bus Queue/Topic or Event Hub. This attribute can only be specified and is mandatory when authentication_type is identityBased for endpoint type AzureIotHub.ServiceBusQueue, AzureIotHub.ServiceBusTopic or AzureIotHub.EventHub.
	entityPath?: null | string @go(EntityPath,*string)

	// File name format for the blob. Default format is {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}. All parameters are mandatory but can be reordered. This attribute is applicable for endpoint type AzureIotHub.StorageContainer.
	fileNameFormat?: null | string @go(FileNameFormat,*string)

	// The ID of the User Managed Identity used to authenticate against the endpoint.
	identityId?: null | string @go(IdentityID,*string)

	// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). This attribute is applicable for endpoint type AzureIotHub.StorageContainer.
	maxChunkSizeInBytes?: null | float64 @go(MaxChunkSizeInBytes,*float64)

	// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: events, operationsMonitoringEvents, fileNotifications and $default.
	name?: null | string @go(Name,*string)

	// The resource group in which the endpoint will be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The type of the endpoint. Possible values are AzureIotHub.StorageContainer, AzureIotHub.ServiceBusQueue, AzureIotHub.ServiceBusTopic or AzureIotHub.EventHub.
	type?: null | string @go(Type,*string)
}

#EndpointParameters: {
}

#EnrichmentObservation: {
	// The list of endpoints which will be enriched.
	endpointNames?: [...null | string] @go(EndpointNames,[]*string)

	// The key of the enrichment.
	key?: null | string @go(Key,*string)

	// The value of the enrichment. Value can be any static string, the name of the IoT Hub sending the message (use $iothubname) or information from the device twin (ex: $twin.tags.latitude)
	value?: null | string @go(Value,*string)
}

#EnrichmentParameters: {
}

#FallbackRouteObservation: {
	// The condition that is evaluated to apply the routing rule. Defaults to true. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language.
	condition?: null | string @go(Condition,*string)

	// Used to specify whether the fallback route is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
	endpointNames?: [...null | string] @go(EndpointNames,[]*string)

	// The source that the routing rule is to be applied to, such as DeviceMessages. Possible values include: Invalid, DeviceMessages, TwinChangeEvents, DeviceLifecycleEvents, DeviceConnectionStateEvents, DeviceJobLifecycleEvents and DigitalTwinChangeEvents.
	source?: null | string @go(Source,*string)
}

#FallbackRouteParameters: {
}

#FeedbackObservation: {
	// The lock duration for the file upload notifications queue, specified as an ISO 8601 timespan duration. This value must be between 5 and 300 seconds. Defaults to PT1M.
	lockDuration?: null | string @go(LockDuration,*string)

	// The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to 10.
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// The retention time for service-bound feedback messages, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 48 hours. Defaults to PT1H.
	timeToLive?: null | string @go(TimeToLive,*string)
}

#FeedbackParameters: {
	// The lock duration for the file upload notifications queue, specified as an ISO 8601 timespan duration. This value must be between 5 and 300 seconds. Defaults to PT1M.
	// +kubebuilder:validation:Optional
	lockDuration?: null | string @go(LockDuration,*string)

	// The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to 10.
	// +kubebuilder:validation:Optional
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// The retention time for service-bound feedback messages, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 48 hours. Defaults to PT1H.
	// +kubebuilder:validation:Optional
	timeToLive?: null | string @go(TimeToLive,*string)
}

#FileUploadObservation: {
	// The type used to authenticate against the storage account. Possible values are keyBased and identityBased. Defaults to keyBased.
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The name of the root container where the files should be uploaded to. The container need not exist but should be creatable using the connection_string specified.
	containerName?: null | string @go(ContainerName,*string)

	// The period of time for which a file upload notification message is available to consume before it expires, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 48 hours. Defaults to PT1H.
	defaultTtl?: null | string @go(DefaultTTL,*string)

	// The ID of the User Managed Identity used to authenticate against the storage account.
	identityId?: null | string @go(IdentityID,*string)

	// The lock duration for the file upload notifications queue, specified as an ISO 8601 timespan duration. This value must be between 5 and 300 seconds. Defaults to PT1M.
	lockDuration?: null | string @go(LockDuration,*string)

	// The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to 10.
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// Used to specify whether file notifications are sent to IoT Hub on upload. Defaults to false.
	notifications?: null | bool @go(Notifications,*bool)

	// The period of time for which the SAS URI generated by IoT Hub for file upload is valid, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 24 hours. Defaults to PT1H.
	sasTtl?: null | string @go(SASTTL,*string)
}

#FileUploadParameters: {
	// The type used to authenticate against the storage account. Possible values are keyBased and identityBased. Defaults to keyBased.
	// +kubebuilder:validation:Optional
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The name of the root container where the files should be uploaded to. The container need not exist but should be creatable using the connection_string specified.
	// +kubebuilder:validation:Required
	containerName?: null | string @go(ContainerName,*string)

	// The period of time for which a file upload notification message is available to consume before it expires, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 48 hours. Defaults to PT1H.
	// +kubebuilder:validation:Optional
	defaultTtl?: null | string @go(DefaultTTL,*string)

	// The ID of the User Managed Identity used to authenticate against the storage account.
	// +kubebuilder:validation:Optional
	identityId?: null | string @go(IdentityID,*string)

	// The lock duration for the file upload notifications queue, specified as an ISO 8601 timespan duration. This value must be between 5 and 300 seconds. Defaults to PT1M.
	// +kubebuilder:validation:Optional
	lockDuration?: null | string @go(LockDuration,*string)

	// The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to 10.
	// +kubebuilder:validation:Optional
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// Used to specify whether file notifications are sent to IoT Hub on upload. Defaults to false.
	// +kubebuilder:validation:Optional
	notifications?: null | bool @go(Notifications,*bool)

	// The period of time for which the SAS URI generated by IoT Hub for file upload is valid, specified as an ISO 8601 timespan duration. This value must be between 1 minute and 24 hours. Defaults to PT1H.
	// +kubebuilder:validation:Optional
	sasTtl?: null | string @go(SASTTL,*string)
}

#IOTHubObservation: {
	// A cloud_to_device block as defined below.
	cloudToDevice?: [...#CloudToDeviceObservation] @go(CloudToDevice,[]CloudToDeviceObservation)

	// An endpoint block as defined below.
	endpoint?: [...#EndpointObservation] @go(Endpoint,[]EndpointObservation)

	// A enrichment block as defined below.
	enrichment?: [...#EnrichmentObservation] @go(Enrichment,[]EnrichmentObservation)

	// The EventHub compatible endpoint for events data
	eventHubEventsEndpoint?: null | string @go(EventHubEventsEndpoint,*string)

	// The EventHub namespace for events data
	eventHubEventsNamespace?: null | string @go(EventHubEventsNamespace,*string)

	// The EventHub compatible path for events data
	eventHubEventsPath?: null | string @go(EventHubEventsPath,*string)

	// The EventHub compatible endpoint for operational data
	eventHubOperationsEndpoint?: null | string @go(EventHubOperationsEndpoint,*string)

	// The EventHub compatible path for operational data
	eventHubOperationsPath?: null | string @go(EventHubOperationsPath,*string)

	// The number of device-to-cloud partitions used by backing event hubs. Must be between 2 and 128.
	eventHubPartitionCount?: null | float64 @go(EventHubPartitionCount,*float64)

	// The event hub retention to use in days. Must be between 1 and 7.
	eventHubRetentionInDays?: null | float64 @go(EventHubRetentionInDays,*float64)

	// A fallback_route block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
	fallbackRoute?: [...#FallbackRouteObservation] @go(FallbackRoute,[]FallbackRouteObservation)

	// A file_upload block as defined below.
	fileUpload?: [...#FileUploadObservation] @go(FileUpload,[]FileUploadObservation)

	// The hostname of the IotHub Resource.
	hostname?: null | string @go(HostName,*string)

	// The ID of the IoTHub.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the minimum TLS version to support for this hub. The only valid value is 1.2. Changing this forces a new resource to be created.
	minTlsVersion?: null | string @go(MinTLSVersion,*string)

	// A network_rule_set block as defined below.
	networkRuleSet?: [...#NetworkRuleSetObservation] @go(NetworkRuleSet,[]NetworkRuleSetObservation)

	// Is the IotHub resource accessible from a public network?
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A route block as defined below.
	route?: [...#RouteObservation] @go(Route,[]RouteObservation)

	// One or more shared_access_policy blocks as defined below.
	sharedAccessPolicy?: [...#SharedAccessPolicyObservation] @go(SharedAccessPolicy,[]SharedAccessPolicyObservation)

	// A sku block as defined below.
	sku?: [...#SkuObservation] @go(Sku,[]SkuObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the type of Managed Service Identity that should be configured on this IoT Hub. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IOTHubParameters: {
	// A cloud_to_device block as defined below.
	// +kubebuilder:validation:Optional
	cloudToDevice?: [...#CloudToDeviceParameters] @go(CloudToDevice,[]CloudToDeviceParameters)

	// The number of device-to-cloud partitions used by backing event hubs. Must be between 2 and 128.
	// +kubebuilder:validation:Optional
	eventHubPartitionCount?: null | float64 @go(EventHubPartitionCount,*float64)

	// The event hub retention to use in days. Must be between 1 and 7.
	// +kubebuilder:validation:Optional
	eventHubRetentionInDays?: null | float64 @go(EventHubRetentionInDays,*float64)

	// A file_upload block as defined below.
	// +kubebuilder:validation:Optional
	fileUpload?: [...#FileUploadParameters] @go(FileUpload,[]FileUploadParameters)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the minimum TLS version to support for this hub. The only valid value is 1.2. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	minTlsVersion?: null | string @go(MinTLSVersion,*string)

	// A network_rule_set block as defined below.
	// +kubebuilder:validation:Optional
	networkRuleSet?: [...#NetworkRuleSetParameters] @go(NetworkRuleSet,[]NetworkRuleSetParameters)

	// Is the IotHub resource accessible from a public network?
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A sku block as defined below.
	// +kubebuilder:validation:Optional
	sku?: [...#SkuParameters] @go(Sku,[]SkuParameters)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IPRuleObservation: {
	// The desired action for requests captured by this rule. Possible values are Allow. Defaults to Allow.
	action?: null | string @go(Action,*string)

	// The IP address range in CIDR notation for the IP rule.
	ipMask?: null | string @go(IPMask,*string)

	// The name of the sku. Possible values are B1, B2, B3, F1, S1, S2, and S3.
	name?: null | string @go(Name,*string)
}

#IPRuleParameters: {
	// The desired action for requests captured by this rule. Possible values are Allow. Defaults to Allow.
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// The IP address range in CIDR notation for the IP rule.
	// +kubebuilder:validation:Required
	ipMask?: null | string @go(IPMask,*string)

	// The name of the sku. Possible values are B1, B2, B3, F1, S1, S2, and S3.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this IoT Hub.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this IoT Hub. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this IoT Hub.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this IoT Hub. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#NetworkRuleSetObservation: {
	// Determines if Network Rule Set is also applied to the BuiltIn EventHub EndPoint of the IotHub. Defaults to false.
	applyToBuiltinEventhubEndpoint?: null | bool @go(ApplyToBuiltinEventHubEndpoint,*bool)

	// Default Action for Network Rule Set. Possible values are Deny, Allow. Defaults to Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	ipRule?: [...#IPRuleObservation] @go(IPRule,[]IPRuleObservation)
}

#NetworkRuleSetParameters: {
	// Determines if Network Rule Set is also applied to the BuiltIn EventHub EndPoint of the IotHub. Defaults to false.
	// +kubebuilder:validation:Optional
	applyToBuiltinEventhubEndpoint?: null | bool @go(ApplyToBuiltinEventHubEndpoint,*bool)

	// Default Action for Network Rule Set. Possible values are Deny, Allow. Defaults to Deny.
	// +kubebuilder:validation:Optional
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	ipRule?: [...#IPRuleParameters] @go(IPRule,[]IPRuleParameters)
}

#RouteObservation: {
	// The condition that is evaluated to apply the routing rule. Defaults to true. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language.
	condition?: null | string @go(Condition,*string)

	// Used to specify whether a route is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// The list of endpoints to which messages that satisfy the condition are routed.
	endpointNames?: [...null | string] @go(EndpointNames,[]*string)

	// The name of the route.
	name?: null | string @go(Name,*string)

	// The source that the routing rule is to be applied to, such as DeviceMessages. Possible values include: Invalid, DeviceMessages, TwinChangeEvents, DeviceLifecycleEvents, DeviceConnectionStateEvents, DeviceJobLifecycleEvents and DigitalTwinChangeEvents.
	source?: null | string @go(Source,*string)
}

#RouteParameters: {
}

#SharedAccessPolicyObservation: {
	// The name of the shared access policy.
	keyName?: null | string @go(KeyName,*string)

	// The permissions assigned to the shared access policy.
	permissions?: null | string @go(Permissions,*string)
}

#SharedAccessPolicyParameters: {
}

#SkuObservation: {
	// The number of provisioned IoT Hub units.
	capacity?: null | float64 @go(Capacity,*float64)

	// The name of the sku. Possible values are B1, B2, B3, F1, S1, S2, and S3.
	name?: null | string @go(Name,*string)
}

#SkuParameters: {
	// The number of provisioned IoT Hub units.
	// +kubebuilder:validation:Required
	capacity?: null | float64 @go(Capacity,*float64)

	// The name of the sku. Possible values are B1, B2, B3, F1, S1, S2, and S3.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

// IOTHubSpec defines the desired state of IOTHub
#IOTHubSpec: {
	forProvider: #IOTHubParameters @go(ForProvider)
}

// IOTHubStatus defines the observed state of IOTHub.
#IOTHubStatus: {
	atProvider?: #IOTHubObservation @go(AtProvider)
}

// IOTHub is the Schema for the IOTHubs API. Manages an IotHub
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IOTHub: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.sku)",message="sku is a required parameter"
	spec:    #IOTHubSpec   @go(Spec)
	status?: #IOTHubStatus @go(Status)
}

// IOTHubList contains a list of IOTHubs
#IOTHubList: {
	items: [...#IOTHub] @go(Items,[]IOTHub)
}
