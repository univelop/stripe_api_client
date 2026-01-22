// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './promotion_codes_post_request_body_restrictions_currency_options.dart';

/// auto generated
/// Settings that restrict the redemption of the promotion code.
class PromotionCodesPostRequestBodyRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency_options property
  PromotionCodesPostRequestBodyRestrictionsCurrencyOptions? currencyOptions;

  ///  The first_time_transaction property
  bool? firstTimeTransaction;

  ///  The minimum_amount property
  int? minimumAmount;

  ///  The minimum_amount_currency property
  String? minimumAmountCurrency;

  /// Instantiates a new [PromotionCodesPostRequestBodyRestrictions] and sets the default values.
  PromotionCodesPostRequestBodyRestrictions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PromotionCodesPostRequestBodyRestrictions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PromotionCodesPostRequestBodyRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<
                PromotionCodesPostRequestBodyRestrictionsCurrencyOptions>(
            PromotionCodesPostRequestBodyRestrictionsCurrencyOptions
                .createFromDiscriminatorValue);
    deserializerMap['first_time_transaction'] =
        (node) => firstTimeTransaction = node.getBoolValue();
    deserializerMap['minimum_amount'] =
        (node) => minimumAmount = node.getIntValue();
    deserializerMap['minimum_amount_currency'] =
        (node) => minimumAmountCurrency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PromotionCodesPostRequestBodyRestrictionsCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeBoolValue('first_time_transaction',
        value: firstTimeTransaction);
    writer.writeIntValue('minimum_amount', minimumAmount);
    writer.writeStringValue('minimum_amount_currency', minimumAmountCurrency);
    writer.writeAdditionalData(additionalData);
  }
}
