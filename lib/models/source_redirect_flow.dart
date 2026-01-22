// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceRedirectFlow implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The failure reason for the redirect, either `user_abort` (the customer aborted or dropped out of the redirect flow), `declined` (the authentication failed or the transaction was declined), or `processing_error` (the redirect failed due to a technical error). Present only if the redirect status is `failed`.
  String? failureReason;

  ///  The URL you provide to redirect the customer to after they authenticated their payment.
  String? returnUrl;

  ///  The status of the redirect, either `pending` (ready to be used by your customer to authenticate the transaction), `succeeded` (successful authentication, cannot be reused) or `not_required` (redirect should not be used) or `failed` (failed authentication, cannot be reused).
  String? status;

  ///  The URL provided to you to redirect a customer to as part of a `redirect` authentication flow.
  String? url;

  /// Instantiates a new [SourceRedirectFlow] and sets the default values.
  SourceRedirectFlow() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceRedirectFlow createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceRedirectFlow();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['failure_reason'] =
        (node) => failureReason = node.getStringValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('failure_reason', failureReason);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeStringValue('status', status);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
