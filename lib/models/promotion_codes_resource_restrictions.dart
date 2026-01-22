// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './promotion_codes_resource_restrictions_currency_options.dart';

/// auto generated
class PromotionCodesResourceRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Promotion code restrictions defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
  PromotionCodesResourceRestrictionsCurrencyOptions? currencyOptions;

  ///  A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
  bool? firstTimeTransaction;

  ///  Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
  int? minimumAmount;

  ///  Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
  String? minimumAmountCurrency;

  /// Instantiates a new [PromotionCodesResourceRestrictions] and sets the default values.
  PromotionCodesResourceRestrictions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PromotionCodesResourceRestrictions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PromotionCodesResourceRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<PromotionCodesResourceRestrictionsCurrencyOptions>(
            PromotionCodesResourceRestrictionsCurrencyOptions
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
    writer.writeObjectValue<PromotionCodesResourceRestrictionsCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeBoolValue('first_time_transaction',
        value: firstTimeTransaction);
    writer.writeIntValue('minimum_amount', minimumAmount);
    writer.writeStringValue('minimum_amount_currency', minimumAmountCurrency);
    writer.writeAdditionalData(additionalData);
  }
}
