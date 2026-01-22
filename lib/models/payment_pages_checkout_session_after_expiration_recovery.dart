// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentPagesCheckoutSessionAfterExpirationRecovery
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to `false`
  bool? allowPromotionCodes;

  ///  If `true`, a recovery url will be generated to recover this Checkout Session if itexpires before a transaction is completed. It will be attached to theCheckout Session object upon expiration.
  bool? enabled;

  ///  The timestamp at which the recovery URL will expire.
  int? expiresAt;

  ///  URL that creates a new Checkout Session when clicked that is a copy of this expired Checkout Session
  String? url;

  /// Instantiates a new [PaymentPagesCheckoutSessionAfterExpirationRecovery] and sets the default values.
  PaymentPagesCheckoutSessionAfterExpirationRecovery() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionAfterExpirationRecovery
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionAfterExpirationRecovery();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_promotion_codes'] =
        (node) => allowPromotionCodes = node.getBoolValue();
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('allow_promotion_codes', value: allowPromotionCodes);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
