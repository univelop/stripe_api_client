// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billing_details_address.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billing_details_email.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billing_details_name.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billing_details_phone.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress?
      address;

  ///  The email property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsEmail? email;

  ///  The name property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsName? name;

  ///  The phone property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsEmail
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsName>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsName
            .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsPhone
            .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
