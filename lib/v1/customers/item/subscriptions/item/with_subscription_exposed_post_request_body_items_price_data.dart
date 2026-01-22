// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_items_price_data_recurring.dart';
import './with_subscription_exposed_post_request_body_items_price_data_tax_behavior.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyItemsPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The product property
  String? product;

  ///  The recurring property
  WithSubscriptionExposedPostRequestBodyItemsPriceDataRecurring? recurring;

  ///  The tax_behavior property
  WithSubscriptionExposedPostRequestBodyItemsPriceDataTaxBehavior? taxBehavior;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyItemsPriceData] and sets the default values.
  WithSubscriptionExposedPostRequestBodyItemsPriceData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyItemsPriceData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyItemsPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['recurring'] = (node) => recurring = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyItemsPriceDataRecurring>(
        WithSubscriptionExposedPostRequestBodyItemsPriceDataRecurring
            .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyItemsPriceDataTaxBehavior>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyItemsPriceDataTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('product', product);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyItemsPriceDataRecurring>(
        'recurring', recurring);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyItemsPriceDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
