// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_billing_details_address.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_billing_details_email.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_billing_details_name.dart';
import './outbound_payments_post_request_body_destination_payment_method_data_billing_details_phone.dart';

/// auto generated
class OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsAddress?
      address;

  ///  The email property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsEmail?
      email;

  ///  The name property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsName?
      name;

  ///  The phone property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsPhone?
      phone;

  /// Instantiates a new [OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails] and sets the default values.
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsAddress>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsEmail>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsEmail
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsName>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsName
            .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsPhone>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsPhone
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodDataBillingDetailsPhone>(
        'phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
