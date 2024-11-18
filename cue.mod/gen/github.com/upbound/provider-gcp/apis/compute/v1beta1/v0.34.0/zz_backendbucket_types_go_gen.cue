// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#BackendBucketObservation: {
	// Cloud Storage bucket name.
	bucketName?: null | string @go(BucketName,*string)

	// Cloud CDN configuration for this Backend Bucket.
	// Structure is documented below.
	cdnPolicy?: [...#CdnPolicyObservation] @go(CdnPolicy,[]CdnPolicyObservation)

	// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
	// Possible values are: AUTOMATIC, DISABLED.
	compressionMode?: null | string @go(CompressionMode,*string)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// Headers that the HTTP/S load balancer should add to proxied responses.
	customResponseHeaders?: [...null | string] @go(CustomResponseHeaders,[]*string)

	// An optional textual description of the resource; provided by the
	// client when the resource is created.
	description?: null | string @go(Description,*string)

	// The security policy associated with this backend bucket.
	edgeSecurityPolicy?: null | string @go(EdgeSecurityPolicy,*string)

	// If true, enable Cloud CDN for this BackendBucket.
	enableCdn?: null | bool @go(EnableCdn,*bool)

	// an identifier for the resource with format projects/{{project}}/global/backendBuckets/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)
}

#BackendBucketParameters: {
	// Cloud Storage bucket name.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/storage/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	bucketName?: null | string @go(BucketName,*string)

	// Cloud CDN configuration for this Backend Bucket.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cdnPolicy?: [...#CdnPolicyParameters] @go(CdnPolicy,[]CdnPolicyParameters)

	// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
	// Possible values are: AUTOMATIC, DISABLED.
	// +kubebuilder:validation:Optional
	compressionMode?: null | string @go(CompressionMode,*string)

	// Headers that the HTTP/S load balancer should add to proxied responses.
	// +kubebuilder:validation:Optional
	customResponseHeaders?: [...null | string] @go(CustomResponseHeaders,[]*string)

	// An optional textual description of the resource; provided by the
	// client when the resource is created.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The security policy associated with this backend bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.SecurityPolicy
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	edgeSecurityPolicy?: null | string @go(EdgeSecurityPolicy,*string)

	// If true, enable Cloud CDN for this BackendBucket.
	// +kubebuilder:validation:Optional
	enableCdn?: null | bool @go(EnableCdn,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#BypassCacheOnRequestHeadersObservation: {
	// The header field name to match on when bypassing cache. Values are case-insensitive.
	headerName?: null | string @go(HeaderName,*string)
}

#BypassCacheOnRequestHeadersParameters: {
	// The header field name to match on when bypassing cache. Values are case-insensitive.
	// +kubebuilder:validation:Optional
	headerName?: null | string @go(HeaderName,*string)
}

#CacheKeyPolicyObservation: {
	// Allows HTTP request headers (by name) to be used in the
	// cache key.
	includeHttpHeaders?: [...null | string] @go(IncludeHTTPHeaders,[]*string)

	// Names of query string parameters to include in cache keys.
	// Default parameters are always included. '&' and '=' will
	// be percent encoded and not treated as delimiters.
	queryStringWhitelist?: [...null | string] @go(QueryStringWhitelist,[]*string)
}

#CacheKeyPolicyParameters: {
	// Allows HTTP request headers (by name) to be used in the
	// cache key.
	// +kubebuilder:validation:Optional
	includeHttpHeaders?: [...null | string] @go(IncludeHTTPHeaders,[]*string)

	// Names of query string parameters to include in cache keys.
	// Default parameters are always included. '&' and '=' will
	// be percent encoded and not treated as delimiters.
	// +kubebuilder:validation:Optional
	queryStringWhitelist?: [...null | string] @go(QueryStringWhitelist,[]*string)
}

#CdnPolicyObservation: {
	// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
	// Structure is documented below.
	bypassCacheOnRequestHeaders?: [...#BypassCacheOnRequestHeadersObservation] @go(BypassCacheOnRequestHeaders,[]BypassCacheOnRequestHeadersObservation)

	// The CacheKeyPolicy for this CdnPolicy.
	// Structure is documented below.
	cacheKeyPolicy?: [...#CacheKeyPolicyObservation] @go(CacheKeyPolicy,[]CacheKeyPolicyObservation)

	// Specifies the cache setting for all responses from this backend.
	// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
	// Possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, CACHE_ALL_STATIC.
	cacheMode?: null | string @go(CacheMode,*string)

	// Specifies the maximum allowed TTL for cached content served by this origin.
	clientTtl?: null | float64 @go(ClientTTL,*float64)

	// Specifies the default TTL for cached content served by this origin for responses
	// that do not have an existing valid TTL (max-age or s-max-age).
	defaultTtl?: null | float64 @go(DefaultTTL,*float64)

	// Specifies the maximum allowed TTL for cached content served by this origin.
	maxTtl?: null | float64 @go(MaxTTL,*float64)

	// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
	negativeCaching?: null | bool @go(NegativeCaching,*bool)

	// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
	// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
	// Structure is documented below.
	negativeCachingPolicy?: [...#NegativeCachingPolicyObservation] @go(NegativeCachingPolicy,[]NegativeCachingPolicyObservation)

	// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
	requestCoalescing?: null | bool @go(RequestCoalescing,*bool)

	// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
	serveWhileStale?: null | float64 @go(ServeWhileStale,*float64)

	// Maximum number of seconds the response to a signed URL request will
	// be considered fresh. After this time period,
	// the response will be revalidated before being served.
	// When serving responses to signed URL requests,
	// Cloud CDN will internally behave as though
	// all responses from this backend had a "Cache-Control: public,
	// max-age=[TTL]" header, regardless of any existing Cache-Control
	// header. The actual headers served in responses will not be altered.
	signedUrlCacheMaxAgeSec?: null | float64 @go(SignedURLCacheMaxAgeSec,*float64)
}

#CdnPolicyParameters: {
	// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	bypassCacheOnRequestHeaders?: [...#BypassCacheOnRequestHeadersParameters] @go(BypassCacheOnRequestHeaders,[]BypassCacheOnRequestHeadersParameters)

	// The CacheKeyPolicy for this CdnPolicy.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cacheKeyPolicy?: [...#CacheKeyPolicyParameters] @go(CacheKeyPolicy,[]CacheKeyPolicyParameters)

	// Specifies the cache setting for all responses from this backend.
	// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
	// Possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, CACHE_ALL_STATIC.
	// +kubebuilder:validation:Optional
	cacheMode?: null | string @go(CacheMode,*string)

	// Specifies the maximum allowed TTL for cached content served by this origin.
	// +kubebuilder:validation:Optional
	clientTtl?: null | float64 @go(ClientTTL,*float64)

	// Specifies the default TTL for cached content served by this origin for responses
	// that do not have an existing valid TTL (max-age or s-max-age).
	// +kubebuilder:validation:Optional
	defaultTtl?: null | float64 @go(DefaultTTL,*float64)

	// Specifies the maximum allowed TTL for cached content served by this origin.
	// +kubebuilder:validation:Optional
	maxTtl?: null | float64 @go(MaxTTL,*float64)

	// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
	// +kubebuilder:validation:Optional
	negativeCaching?: null | bool @go(NegativeCaching,*bool)

	// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
	// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	negativeCachingPolicy?: [...#NegativeCachingPolicyParameters] @go(NegativeCachingPolicy,[]NegativeCachingPolicyParameters)

	// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
	// +kubebuilder:validation:Optional
	requestCoalescing?: null | bool @go(RequestCoalescing,*bool)

	// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
	// +kubebuilder:validation:Optional
	serveWhileStale?: null | float64 @go(ServeWhileStale,*float64)

	// Maximum number of seconds the response to a signed URL request will
	// be considered fresh. After this time period,
	// the response will be revalidated before being served.
	// When serving responses to signed URL requests,
	// Cloud CDN will internally behave as though
	// all responses from this backend had a "Cache-Control: public,
	// max-age=[TTL]" header, regardless of any existing Cache-Control
	// header. The actual headers served in responses will not be altered.
	// +kubebuilder:validation:Optional
	signedUrlCacheMaxAgeSec?: null | float64 @go(SignedURLCacheMaxAgeSec,*float64)
}

#NegativeCachingPolicyObservation: {
	// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
	// can be specified as values, and you cannot specify a status code more than once.
	code?: null | float64 @go(Code,*float64)

	// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
	// (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
	ttl?: null | float64 @go(TTL,*float64)
}

#NegativeCachingPolicyParameters: {
	// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
	// can be specified as values, and you cannot specify a status code more than once.
	// +kubebuilder:validation:Optional
	code?: null | float64 @go(Code,*float64)

	// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
	// (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
	// +kubebuilder:validation:Optional
	ttl?: null | float64 @go(TTL,*float64)
}

// BackendBucketSpec defines the desired state of BackendBucket
#BackendBucketSpec: {
	forProvider: #BackendBucketParameters @go(ForProvider)
}

// BackendBucketStatus defines the observed state of BackendBucket.
#BackendBucketStatus: {
	atProvider?: #BackendBucketObservation @go(AtProvider)
}

// BackendBucket is the Schema for the BackendBuckets API. Backend buckets allow you to use Google Cloud Storage buckets with HTTP(S) load balancing.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#BackendBucket: {
	spec:    #BackendBucketSpec   @go(Spec)
	status?: #BackendBucketStatus @go(Status)
}

// BackendBucketList contains a list of BackendBuckets
#BackendBucketList: {
	items: [...#BackendBucket] @go(Items,[]BackendBucket)
}
