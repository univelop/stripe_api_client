// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_shipping_address_collection_allowed_countries.dart';

/// auto generated
/// Configuration for collecting the customer's shipping address.
class PaymentLinksPostRequestBodyShippingAddressCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allowed_countries property
  Iterable<
          PaymentLinksPostRequestBodyShippingAddressCollectionAllowedCountries>?
      allowedCountries;

  /// Instantiates a new [PaymentLinksPostRequestBodyShippingAddressCollection] and sets the default values.
  PaymentLinksPostRequestBodyShippingAddressCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyShippingAddressCollection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyShippingAddressCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_countries'] = (node) => allowedCountries =
        node.getCollectionOfEnumValues<
                PaymentLinksPostRequestBodyShippingAddressCollectionAllowedCountries>(
            (stringValue) =>
                PaymentLinksPostRequestBodyShippingAddressCollectionAllowedCountries
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
            PaymentLinksPostRequestBodyShippingAddressCollectionAllowedCountries>(
        'allowed_countries', allowedCountries, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
