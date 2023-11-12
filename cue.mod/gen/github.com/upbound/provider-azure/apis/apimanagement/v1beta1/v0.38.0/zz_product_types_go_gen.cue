// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#ProductInitParameters: {
	// Do subscribers need to be approved prior to being able to use the Product?
	approvalRequired?: null | bool @go(ApprovalRequired,*bool)

	// A description of this Product, which may include HTML formatting tags.
	description?: null | string @go(Description,*string)

	// The Display Name for this API Management Product.
	displayName?: null | string @go(DisplayName,*string)

	// Is this Product Published?
	published?: null | bool @go(Published,*bool)

	// Is a Subscription required to access API's included in this Product? Defaults to true.
	subscriptionRequired?: null | bool @go(SubscriptionRequired,*bool)

	// The number of subscriptions a user can have to this Product at the same time.
	subscriptionsLimit?: null | float64 @go(SubscriptionsLimit,*float64)

	// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
	terms?: null | string @go(Terms,*string)
}

#ProductObservation: {
	// The name of the API Management Service. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Do subscribers need to be approved prior to being able to use the Product?
	approvalRequired?: null | bool @go(ApprovalRequired,*bool)

	// A description of this Product, which may include HTML formatting tags.
	description?: null | string @go(Description,*string)

	// The Display Name for this API Management Product.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the API Management Product.
	id?: null | string @go(ID,*string)

	// Is this Product Published?
	published?: null | bool @go(Published,*bool)

	// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Is a Subscription required to access API's included in this Product? Defaults to true.
	subscriptionRequired?: null | bool @go(SubscriptionRequired,*bool)

	// The number of subscriptions a user can have to this Product at the same time.
	subscriptionsLimit?: null | float64 @go(SubscriptionsLimit,*float64)

	// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
	terms?: null | string @go(Terms,*string)
}

#ProductParameters: {
	// The name of the API Management Service. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Do subscribers need to be approved prior to being able to use the Product?
	// +kubebuilder:validation:Optional
	approvalRequired?: null | bool @go(ApprovalRequired,*bool)

	// A description of this Product, which may include HTML formatting tags.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The Display Name for this API Management Product.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Is this Product Published?
	// +kubebuilder:validation:Optional
	published?: null | bool @go(Published,*bool)

	// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Is a Subscription required to access API's included in this Product? Defaults to true.
	// +kubebuilder:validation:Optional
	subscriptionRequired?: null | bool @go(SubscriptionRequired,*bool)

	// The number of subscriptions a user can have to this Product at the same time.
	// +kubebuilder:validation:Optional
	subscriptionsLimit?: null | float64 @go(SubscriptionsLimit,*float64)

	// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
	// +kubebuilder:validation:Optional
	terms?: null | string @go(Terms,*string)
}

// ProductSpec defines the desired state of Product
#ProductSpec: {
	forProvider: #ProductParameters @go(ForProvider)

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
	initProvider?: #ProductInitParameters @go(InitProvider)
}

// ProductStatus defines the observed state of Product.
#ProductStatus: {
	atProvider?: #ProductObservation @go(AtProvider)
}

// Product is the Schema for the Products API. Manages an API Management Product.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Product: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.published) || (has(self.initProvider) && has(self.initProvider.published))",message="spec.forProvider.published is a required parameter"
	spec:    #ProductSpec   @go(Spec)
	status?: #ProductStatus @go(Status)
}

// ProductList contains a list of Products
#ProductList: {
	items: [...#Product] @go(Items,[]Product)
}
