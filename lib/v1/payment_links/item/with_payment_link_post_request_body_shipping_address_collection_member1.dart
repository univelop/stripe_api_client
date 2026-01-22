// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_shipping_address_collection_member1_allowed_countries.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allowed_countries property
  Iterable<
          WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1AllowedCountries>?
      allowedCountries;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1] and sets the default values.
  WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_countries'] = (node) => allowedCountries =
        node.getCollectionOfEnumValues<
                WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1AllowedCountries>(
            (stringValue) =>
                WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1AllowedCountries
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
            WithPaymentLinkPostRequestBodyShippingAddressCollectionMember1AllowedCountries>(
        'allowed_countries', allowedCountries, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
