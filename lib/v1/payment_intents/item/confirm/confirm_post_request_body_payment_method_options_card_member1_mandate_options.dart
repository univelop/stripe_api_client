// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_member1_mandate_options_amount_type.dart';
import './confirm_post_request_body_payment_method_options_card_member1_mandate_options_interval.dart';
import './confirm_post_request_body_payment_method_options_card_member1_mandate_options_supported_types.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The amount_type property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsAmountType?
      amountType;

  ///  The description property
  String? description;

  ///  The end_date property
  int? endDate;

  ///  The interval property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsInterval?
      interval;

  ///  The interval_count property
  int? intervalCount;

  ///  The reference property
  String? reference;

  ///  The start_date property
  int? startDate;

  ///  The supported_types property
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsSupportedTypes>?
      supportedTypes;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsAmountType>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['end_date'] = (node) => endDate = node.getIntValue();
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsInterval>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['start_date'] = (node) => startDate = node.getIntValue();
    deserializerMap[
        'supported_types'] = (node) => supportedTypes = node.getCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsSupportedTypes>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsSupportedTypes
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeIntValue('end_date', endDate);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeStringValue('reference', reference);
    writer.writeIntValue('start_date', startDate);
    writer.writeCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1MandateOptionsSupportedTypes>(
        'supported_types', supportedTypes, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
