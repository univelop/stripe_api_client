// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_grants_post_request_body_applicability_config_scope_price_type.dart';
import './credit_grants_post_request_body_applicability_config_scope_prices.dart';

/// auto generated
class CreditGrantsPostRequestBodyApplicabilityConfigScope
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The prices property
  Iterable<CreditGrantsPostRequestBodyApplicabilityConfigScopePrices>? prices;

  ///  The price_type property
  CreditGrantsPostRequestBodyApplicabilityConfigScopePriceType? priceType;

  /// Instantiates a new [CreditGrantsPostRequestBodyApplicabilityConfigScope] and sets the default values.
  CreditGrantsPostRequestBodyApplicabilityConfigScope() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditGrantsPostRequestBodyApplicabilityConfigScope
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditGrantsPostRequestBodyApplicabilityConfigScope();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['prices'] = (node) => prices =
        node.getCollectionOfObjectValues<
                CreditGrantsPostRequestBodyApplicabilityConfigScopePrices>(
            CreditGrantsPostRequestBodyApplicabilityConfigScopePrices
                .createFromDiscriminatorValue);
    deserializerMap['price_type'] = (node) => priceType = node.getEnumValue<
            CreditGrantsPostRequestBodyApplicabilityConfigScopePriceType>(
        (stringValue) =>
            CreditGrantsPostRequestBodyApplicabilityConfigScopePriceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            CreditGrantsPostRequestBodyApplicabilityConfigScopePrices>(
        'prices', prices);
    writer.writeEnumValue<
            CreditGrantsPostRequestBodyApplicabilityConfigScopePriceType>(
        'price_type', priceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
