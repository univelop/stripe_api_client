// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_billing_details.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_metadata.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_type.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_us_bank_account.dart';

/// auto generated
/// Hash used to generate the PaymentMethod to be used for this OutboundPayment. Exclusive with `destination_payment_method`.
class OutboundPaymentsPostRequestBodyDestinationPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_details property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails?
      billingDetails;

  ///  The financial_account property
  String? financialAccount;

  ///  The metadata property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataMetadata? metadata;

  ///  The type property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataType? type_;

  ///  The us_bank_account property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataUsBankAccount?
      usBankAccount;

  /// Instantiates a new [OutboundPaymentsPostRequestBodyDestinationPaymentMethodData] and sets the default values.
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBodyDestinationPaymentMethodData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPostRequestBodyDestinationPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'billing_details'] = (node) => billingDetails = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails
            .createFromDiscriminatorValue);
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataMetadata>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataType>(
        (stringValue) =>
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataUsBankAccount>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails>(
        'billing_details', billingDetails);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
