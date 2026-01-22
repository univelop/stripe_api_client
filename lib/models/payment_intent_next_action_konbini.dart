// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_next_action_konbini_stores.dart';

/// auto generated
class PaymentIntentNextActionKonbini implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp at which the pending Konbini payment expires.
  int? expiresAt;

  ///  The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
  String? hostedVoucherUrl;

  ///  The stores property
  PaymentIntentNextActionKonbiniStores? stores;

  /// Instantiates a new [PaymentIntentNextActionKonbini] and sets the default values.
  PaymentIntentNextActionKonbini() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionKonbini createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionKonbini();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['hosted_voucher_url'] =
        (node) => hostedVoucherUrl = node.getStringValue();
    deserializerMap['stores'] = (node) => stores =
        node.getObjectValue<PaymentIntentNextActionKonbiniStores>(
            PaymentIntentNextActionKonbiniStores.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('hosted_voucher_url', hostedVoucherUrl);
    writer.writeObjectValue<PaymentIntentNextActionKonbiniStores>(
        'stores', stores);
    writer.writeAdditionalData(additionalData);
  }
}
