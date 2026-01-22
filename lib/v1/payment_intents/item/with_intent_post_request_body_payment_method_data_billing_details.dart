// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_data_billing_details_address.dart';
import './with_intent_post_request_body_payment_method_data_billing_details_email.dart';
import './with_intent_post_request_body_payment_method_data_billing_details_name.dart';
import './with_intent_post_request_body_payment_method_data_billing_details_phone.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodDataBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithIntentPostRequestBodyPaymentMethodDataBillingDetailsAddress? address;

  ///  The email property
  WithIntentPostRequestBodyPaymentMethodDataBillingDetailsEmail? email;

  ///  The name property
  WithIntentPostRequestBodyPaymentMethodDataBillingDetailsName? name;

  ///  The phone property
  WithIntentPostRequestBodyPaymentMethodDataBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodDataBillingDetails] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodDataBillingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodDataBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodDataBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        WithIntentPostRequestBodyPaymentMethodDataBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        WithIntentPostRequestBodyPaymentMethodDataBillingDetailsEmail
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsName>(
        WithIntentPostRequestBodyPaymentMethodDataBillingDetailsName
            .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        WithIntentPostRequestBodyPaymentMethodDataBillingDetailsPhone
            .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
