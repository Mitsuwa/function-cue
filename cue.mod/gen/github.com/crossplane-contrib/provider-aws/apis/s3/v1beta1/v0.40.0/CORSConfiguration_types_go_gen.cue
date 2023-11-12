// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/s3/v1beta1

package v1beta1

// CORSConfiguration describes the cross-origin access configuration for objects
// in an Amazon S3 bucket. For more information, see Enabling Cross-Origin Resource Sharing
// (https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the Amazon
// Simple Storage Service Developer Guide.
#CORSConfiguration: {
	// A set of origins and methods (cross-origin access that you want to allow).
	// You can add up to 100 rules to the configuration.
	corsRules: [...#CORSRule] @go(CORSRules,[]CORSRule)
}

// CORSRule specifies a cross-origin access rule for an Amazon S3 bucket.
#CORSRule: {
	// Headers that are specified in the Access-Control-Request-Headers header.
	// These headers are allowed in a preflight OPTIONS request. In response to
	// any preflight OPTIONS request, Amazon S3 returns any requested headers that
	// are allowed.
	// +optional
	allowedHeaders?: [...string] @go(AllowedHeaders,[]string)

	// An HTTP method that you allow the origin to execute. Valid values are GET,
	// PUT, HEAD, POST, and DELETE.
	allowedMethods: [...string] @go(AllowedMethods,[]string)

	// One or more origins you want customers to be able to access the bucket from.
	allowedOrigins: [...string] @go(AllowedOrigins,[]string)

	// One or more headers in the response that you want customers to be able to
	// access from their applications (for example, from a JavaScript XMLHttpRequest
	// object).
	// +optional
	exposeHeaders?: [...string] @go(ExposeHeaders,[]string)

	// The time in seconds that your browser is to cache the preflight response
	// for the specified resource.
	// +optional
	maxAgeSeconds?: int32 @go(MaxAgeSeconds)
}
