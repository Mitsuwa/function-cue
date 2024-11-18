// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#SubscriptionObservation: {
	// The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
	apiId?: null | string @go(APIID,*string)

	// The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Determines whether tracing can be enabled. Defaults to true.
	allowTracing?: null | bool @go(AllowTracing,*bool)

	// The ID of the API Management Subscription.
	id?: null | string @go(ID,*string)

	// The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
	productId?: null | string @go(ProductID,*string)

	// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The state of this Subscription. Possible values are active, cancelled, expired, rejected, submitted and suspended. Defaults to submitted.
	state?: null | string @go(State,*string)

	// An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created.
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created.
	userId?: null | string @go(UserID,*string)
}

#SubscriptionParameters: {
	// The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	apiId?: null | string @go(APIID,*string)

	// The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Determines whether tracing can be enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	allowTracing?: null | bool @go(AllowTracing,*bool)

	// The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Product
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	productId?: null | string @go(ProductID,*string)

	// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The state of this Subscription. Possible values are active, cancelled, expired, rejected, submitted and suspended. Defaults to submitted.
	// +kubebuilder:validation:Optional
	state?: null | string @go(State,*string)

	// An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=User
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	userId?: null | string @go(UserID,*string)
}

// SubscriptionSpec defines the desired state of Subscription
#SubscriptionSpec: {
	forProvider: #SubscriptionParameters @go(ForProvider)
}

// SubscriptionStatus defines the observed state of Subscription.
#SubscriptionStatus: {
	atProvider?: #SubscriptionObservation @go(AtProvider)
}

// Subscription is the Schema for the Subscriptions API. Manages a Subscription within a API Management Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Subscription: {
	spec:    #SubscriptionSpec   @go(Spec)
	status?: #SubscriptionStatus @go(Status)
}

// SubscriptionList contains a list of Subscriptions
#SubscriptionList: {
	items: [...#Subscription] @go(Items,[]Subscription)
}
