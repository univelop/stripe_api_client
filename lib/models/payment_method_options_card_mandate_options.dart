// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_card_mandate_options_amount_type.dart';
import './payment_method_options_card_mandate_options_interval.dart';
import './payment_method_options_card_mandate_options_supported_types.dart';

/// auto generated
class PaymentMethodOptionsCardMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount to be charged for future payments.
  int? amount;

  ///  One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
  PaymentMethodOptionsCardMandateOptionsAmountType? amountType;

  ///  A description of the mandate or subscription that is meant to be displayed to the customer.
  String? description;

  ///  End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
  int? endDate;

  ///  Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
  PaymentMethodOptionsCardMandateOptionsInterval? interval;

  ///  The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
  int? intervalCount;

  ///  Unique identifier for the mandate or subscription.
  String? reference;

  ///  Start date of the mandate or subscription. Start date should not be lesser than yesterday.
  int? startDate;

  ///  Specifies the type of mandates supported. Possible values are `india`.
  Iterable<PaymentMethodOptionsCardMandateOptionsSupportedTypes>?
      supportedTypes;

  /// Instantiates a new [PaymentMethodOptionsCardMandateOptions] and sets the default values.
  PaymentMethodOptionsCardMandateOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsCardMandateOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsCardMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType =
        node.getEnumValue<PaymentMethodOptionsCardMandateOptionsAmountType>(
            (stringValue) => PaymentMethodOptionsCardMandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['end_date'] = (node) => endDate = node.getIntValue();
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<PaymentMethodOptionsCardMandateOptionsInterval>(
            (stringValue) => PaymentMethodOptionsCardMandateOptionsInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['start_date'] = (node) => startDate = node.getIntValue();
    deserializerMap['supported_types'] = (node) => supportedTypes =
        node.getCollectionOfEnumValues<
                PaymentMethodOptionsCardMandateOptionsSupportedTypes>(
            (stringValue) =>
                PaymentMethodOptionsCardMandateOptionsSupportedTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<PaymentMethodOptionsCardMandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeIntValue('end_date', endDate);
    writer.writeEnumValue<PaymentMethodOptionsCardMandateOptionsInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeStringValue('reference', reference);
    writer.writeIntValue('start_date', startDate);
    writer.writeCollectionOfEnumValues<
            PaymentMethodOptionsCardMandateOptionsSupportedTypes>(
        'supported_types', supportedTypes, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
