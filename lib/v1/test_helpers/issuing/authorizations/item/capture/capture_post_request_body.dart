// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_purchase_details.dart';

/// auto generated
class CapturePostRequestBody implements Parsable {
  ///  The amount to capture from the authorization. If not provided, the full amount of the authorization will be captured. This amount is in the authorization currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? captureAmount;

  ///  Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
  bool? closeAuthorization;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Additional purchase information that is optionally provided by the merchant.
  CapturePostRequestBodyPurchaseDetails? purchaseDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_amount'] =
        (node) => captureAmount = node.getIntValue();
    deserializerMap['close_authorization'] =
        (node) => closeAuthorization = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['purchase_details'] = (node) => purchaseDetails =
        node.getObjectValue<CapturePostRequestBodyPurchaseDetails>(
            CapturePostRequestBodyPurchaseDetails.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('capture_amount', captureAmount);
    writer.writeBoolValue('close_authorization', value: closeAuthorization);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CapturePostRequestBodyPurchaseDetails>(
        'purchase_details', purchaseDetails);
  }
}
