// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_after_expiration_recovery.dart';

/// auto generated
class PaymentPagesCheckoutSessionAfterExpiration
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  When set, configuration used to recover the Checkout Session on expiry.
  PaymentPagesCheckoutSessionAfterExpirationRecovery? recovery;

  /// Instantiates a new [PaymentPagesCheckoutSessionAfterExpiration] and sets the default values.
  PaymentPagesCheckoutSessionAfterExpiration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionAfterExpiration
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionAfterExpiration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['recovery'] = (node) => recovery =
        node.getObjectValue<PaymentPagesCheckoutSessionAfterExpirationRecovery>(
            PaymentPagesCheckoutSessionAfterExpirationRecovery
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentPagesCheckoutSessionAfterExpirationRecovery>(
        'recovery', recovery);
    writer.writeAdditionalData(additionalData);
  }
}
