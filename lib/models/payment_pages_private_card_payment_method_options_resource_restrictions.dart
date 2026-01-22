// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_private_card_payment_method_options_resource_restrictions_brands_blocked.dart';

/// auto generated
class PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Specify the card brands to block in the Checkout Session. If a customer enters or selects a card belonging to a blocked brand, they can't complete the Session.
  Iterable<
          PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictionsBrandsBlocked>?
      brandsBlocked;

  /// Instantiates a new [PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions] and sets the default values.
  PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'brands_blocked'] = (node) => brandsBlocked = node.getCollectionOfEnumValues<
            PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictionsBrandsBlocked>(
        (stringValue) =>
            PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictionsBrandsBlocked
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictionsBrandsBlocked>(
        'brands_blocked', brandsBlocked, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
