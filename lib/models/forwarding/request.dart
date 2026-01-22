// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../forwarded_request_context.dart';
import '../forwarded_request_details.dart';
import '../forwarded_response_details.dart';
import './request_metadata.dart';
import './request_object.dart';
import './request_replacements.dart';

/// auto generated
/// Instructs Stripe to make a request on your behalf using the destination URL. The destination URLis activated by Stripe at the time of onboarding. Stripe verifies requests with your credentialsprovided during onboarding, and injects card details from the payment_method into the request.Stripe redacts all sensitive fields and headers, including authentication credentials and card numbers,before storing the request and response data in the forwarding Request object, which are subject to a30-day retention period.You can provide a Stripe idempotency key to make sure that requests with the same key result in only oneoutbound request. The Stripe idempotency key provided should be unique and different from any idempotencykeys provided on the underlying third-party request.Forwarding Requests are synchronous requests that return a response or time out according toStripe’s limits.Related guide: [Forward card details to third-party API endpoints](https://docs.stripe.com/payments/forwarding).
class Request implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  RequestMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  RequestObject? object;

  ///  The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
  String? paymentMethod;

  ///  The field kinds to be replaced in the forwarded request.
  Iterable<RequestReplacements>? replacements;

  ///  Context about the request from Stripe's servers to the destination endpoint.
  ForwardedRequestContext? requestContext;

  ///  The request that was sent to the destination endpoint. We redact any sensitive fields.
  ForwardedRequestDetails? requestDetails;

  ///  The response that the destination endpoint returned to us. We redact any sensitive fields.
  ForwardedResponseDetails? responseDetails;

  ///  The destination URL for the forwarded request. Must be supported by the config.
  String? url;

  /// Instantiates a new [Request] and sets the default values.
  Request() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Request createFromDiscriminatorValue(ParseNode parseNode) {
    return Request();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<RequestMetadata>(
            RequestMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<RequestObject>((stringValue) => RequestObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['replacements'] = (node) => replacements =
        node.getCollectionOfEnumValues<RequestReplacements>((stringValue) =>
            RequestReplacements.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_context'] = (node) => requestContext =
        node.getObjectValue<ForwardedRequestContext>(
            ForwardedRequestContext.createFromDiscriminatorValue);
    deserializerMap['request_details'] = (node) => requestDetails =
        node.getObjectValue<ForwardedRequestDetails>(
            ForwardedRequestDetails.createFromDiscriminatorValue);
    deserializerMap['response_details'] = (node) => responseDetails =
        node.getObjectValue<ForwardedResponseDetails>(
            ForwardedResponseDetails.createFromDiscriminatorValue);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<RequestMetadata>('metadata', metadata);
    writer.writeEnumValue<RequestObject>('object', object, (e) => e?.value);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeCollectionOfEnumValues<RequestReplacements>(
        'replacements', replacements, (e) => e?.value);
    writer.writeObjectValue<ForwardedRequestContext>(
        'request_context', requestContext);
    writer.writeObjectValue<ForwardedRequestDetails>(
        'request_details', requestDetails);
    writer.writeObjectValue<ForwardedResponseDetails>(
        'response_details', responseDetails);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
