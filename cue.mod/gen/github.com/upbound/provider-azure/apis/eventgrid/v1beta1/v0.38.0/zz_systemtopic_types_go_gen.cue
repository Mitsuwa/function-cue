// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/eventgrid/v1beta1

package v1beta1

#SystemTopicIdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#SystemTopicIdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#SystemTopicIdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are SystemAssigned, UserAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#SystemTopicInitParameters: {
	// An identity block as defined below.
	identity?: [...#SystemTopicIdentityInitParameters] @go(Identity,[]SystemTopicIdentityInitParameters)

	// The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags which should be assigned to the Event Grid System Topic.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: Microsoft.AppConfiguration.ConfigurationStores, Microsoft.Communication.CommunicationServices, Microsoft.ContainerRegistry.Registries, Microsoft.Devices.IoTHubs, Microsoft.EventGrid.Domains, Microsoft.EventGrid.Topics, Microsoft.Eventhub.Namespaces, Microsoft.KeyVault.vaults, Microsoft.MachineLearningServices.Workspaces, Microsoft.Maps.Accounts, Microsoft.Media.MediaServices, Microsoft.Resources.ResourceGroups, Microsoft.Resources.Subscriptions, Microsoft.ServiceBus.Namespaces, Microsoft.SignalRService.SignalR, Microsoft.Storage.StorageAccounts, Microsoft.Web.ServerFarms and Microsoft.Web.Sites. Changing this forces a new Event Grid System Topic to be created.
	topicType?: null | string @go(TopicType,*string)
}

#SystemTopicObservation: {
	// The ID of the Event Grid System Topic.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#SystemTopicIdentityObservation] @go(Identity,[]SystemTopicIdentityObservation)

	// The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
	location?: null | string @go(Location,*string)

	// The Metric ARM Resource ID of the Event Grid System Topic.
	metricArmResourceId?: null | string @go(MetricArmResourceID,*string)

	// The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created.
	sourceArmResourceId?: null | string @go(SourceArmResourceID,*string)

	// A mapping of tags which should be assigned to the Event Grid System Topic.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: Microsoft.AppConfiguration.ConfigurationStores, Microsoft.Communication.CommunicationServices, Microsoft.ContainerRegistry.Registries, Microsoft.Devices.IoTHubs, Microsoft.EventGrid.Domains, Microsoft.EventGrid.Topics, Microsoft.Eventhub.Namespaces, Microsoft.KeyVault.vaults, Microsoft.MachineLearningServices.Workspaces, Microsoft.Maps.Accounts, Microsoft.Media.MediaServices, Microsoft.Resources.ResourceGroups, Microsoft.Resources.Subscriptions, Microsoft.ServiceBus.Namespaces, Microsoft.SignalRService.SignalR, Microsoft.Storage.StorageAccounts, Microsoft.Web.ServerFarms and Microsoft.Web.Sites. Changing this forces a new Event Grid System Topic to be created.
	topicType?: null | string @go(TopicType,*string)
}

#SystemTopicParameters: {
	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#SystemTopicIdentityParameters] @go(Identity,[]SystemTopicIdentityParameters)

	// The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	sourceArmResourceId?: null | string @go(SourceArmResourceID,*string)

	// A mapping of tags which should be assigned to the Event Grid System Topic.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: Microsoft.AppConfiguration.ConfigurationStores, Microsoft.Communication.CommunicationServices, Microsoft.ContainerRegistry.Registries, Microsoft.Devices.IoTHubs, Microsoft.EventGrid.Domains, Microsoft.EventGrid.Topics, Microsoft.Eventhub.Namespaces, Microsoft.KeyVault.vaults, Microsoft.MachineLearningServices.Workspaces, Microsoft.Maps.Accounts, Microsoft.Media.MediaServices, Microsoft.Resources.ResourceGroups, Microsoft.Resources.Subscriptions, Microsoft.ServiceBus.Namespaces, Microsoft.SignalRService.SignalR, Microsoft.Storage.StorageAccounts, Microsoft.Web.ServerFarms and Microsoft.Web.Sites. Changing this forces a new Event Grid System Topic to be created.
	// +kubebuilder:validation:Optional
	topicType?: null | string @go(TopicType,*string)
}

// SystemTopicSpec defines the desired state of SystemTopic
#SystemTopicSpec: {
	forProvider: #SystemTopicParameters @go(ForProvider)

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
	initProvider?: #SystemTopicInitParameters @go(InitProvider)
}

// SystemTopicStatus defines the observed state of SystemTopic.
#SystemTopicStatus: {
	atProvider?: #SystemTopicObservation @go(AtProvider)
}

// SystemTopic is the Schema for the SystemTopics API. Manages an Event Grid System Topic
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SystemTopic: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.topicType) || (has(self.initProvider) && has(self.initProvider.topicType))",message="spec.forProvider.topicType is a required parameter"
	spec:    #SystemTopicSpec   @go(Spec)
	status?: #SystemTopicStatus @go(Status)
}

// SystemTopicList contains a list of SystemTopics
#SystemTopicList: {
	items: [...#SystemTopic] @go(Items,[]SystemTopic)
}
