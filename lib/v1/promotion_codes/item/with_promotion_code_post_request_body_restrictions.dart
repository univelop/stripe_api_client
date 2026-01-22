// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_promotion_code_post_request_body_restrictions_currency_options.dart';

/// auto generated
/// Settings that restrict the redemption of the promotion code.
class WithPromotionCodePostRequestBodyRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency_options property
  WithPromotionCodePostRequestBodyRestrictionsCurrencyOptions? currencyOptions;

  /// Instantiates a new [WithPromotionCodePostRequestBodyRestrictions] and sets the default values.
  WithPromotionCodePostRequestBodyRestrictions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPromotionCodePostRequestBodyRestrictions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPromotionCodePostRequestBodyRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<
                WithPromotionCodePostRequestBodyRestrictionsCurrencyOptions>(
            WithPromotionCodePostRequestBodyRestrictionsCurrencyOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPromotionCodePostRequestBodyRestrictionsCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeAdditionalData(additionalData);
  }
}
