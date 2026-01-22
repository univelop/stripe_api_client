// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_klarna_member1_on_demand_purchase_interval.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The average_amount property
  int? averageAmount;

  ///  The maximum_amount property
  int? maximumAmount;

  ///  The minimum_amount property
  int? minimumAmount;

  ///  The purchase_interval property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemandPurchaseInterval?
      purchaseInterval;

  ///  The purchase_interval_count property
  int? purchaseIntervalCount;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['average_amount'] =
        (node) => averageAmount = node.getIntValue();
    deserializerMap['maximum_amount'] =
        (node) => maximumAmount = node.getIntValue();
    deserializerMap['minimum_amount'] =
        (node) => minimumAmount = node.getIntValue();
    deserializerMap[
        'purchase_interval'] = (node) => purchaseInterval = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemandPurchaseInterval>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemandPurchaseInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['purchase_interval_count'] =
        (node) => purchaseIntervalCount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('average_amount', averageAmount);
    writer.writeIntValue('maximum_amount', maximumAmount);
    writer.writeIntValue('minimum_amount', minimumAmount);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemandPurchaseInterval>(
        'purchase_interval', purchaseInterval, (e) => e?.value);
    writer.writeIntValue('purchase_interval_count', purchaseIntervalCount);
    writer.writeAdditionalData(additionalData);
  }
}
