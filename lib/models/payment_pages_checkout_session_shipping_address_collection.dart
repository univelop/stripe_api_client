// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_shipping_address_collection_allowed_countries.dart';

/// auto generated
class PaymentPagesCheckoutSessionShippingAddressCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An array of two-letter ISO country codes representing which countries Checkout should provide as options forshipping locations. Unsupported country codes: `AS, CX, CC, CU, HM, IR, KP, MH, FM, NF, MP, PW, SY, UM, VI`.
  Iterable<
          PaymentPagesCheckoutSessionShippingAddressCollectionAllowedCountries>?
      allowedCountries;

  /// Instantiates a new [PaymentPagesCheckoutSessionShippingAddressCollection] and sets the default values.
  PaymentPagesCheckoutSessionShippingAddressCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionShippingAddressCollection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionShippingAddressCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_countries'] = (node) => allowedCountries =
        node.getCollectionOfEnumValues<
                PaymentPagesCheckoutSessionShippingAddressCollectionAllowedCountries>(
            (stringValue) =>
                PaymentPagesCheckoutSessionShippingAddressCollectionAllowedCountries
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
            PaymentPagesCheckoutSessionShippingAddressCollectionAllowedCountries>(
        'allowed_countries', allowedCountries, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
