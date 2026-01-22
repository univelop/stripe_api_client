// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_data_billing_details_address.dart';
import './payment_intents_post_request_body_payment_method_data_billing_details_email.dart';
import './payment_intents_post_request_body_payment_method_data_billing_details_name.dart';
import './payment_intents_post_request_body_payment_method_data_billing_details_phone.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress? address;

  ///  The email property
  PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail? email;

  ///  The name property
  PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsName? name;

  ///  The phone property
  PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsName>(
        PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsName
            .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone
            .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
