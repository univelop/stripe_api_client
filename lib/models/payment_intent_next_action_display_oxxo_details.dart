// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionDisplayOxxoDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp after which the OXXO voucher expires.
  int? expiresAfter;

  ///  The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
  String? hostedVoucherUrl;

  ///  OXXO reference number.
  String? number;

  /// Instantiates a new [PaymentIntentNextActionDisplayOxxoDetails] and sets the default values.
  PaymentIntentNextActionDisplayOxxoDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionDisplayOxxoDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionDisplayOxxoDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expires_after'] =
        (node) => expiresAfter = node.getIntValue();
    deserializerMap['hosted_voucher_url'] =
        (node) => hostedVoucherUrl = node.getStringValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('expires_after', expiresAfter);
    writer.writeStringValue('hosted_voucher_url', hostedVoucherUrl);
    writer.writeStringValue('number', number);
    writer.writeAdditionalData(additionalData);
  }
}
