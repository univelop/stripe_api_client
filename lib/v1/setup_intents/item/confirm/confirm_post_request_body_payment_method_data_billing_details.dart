// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_data_billing_details_address.dart';
import './confirm_post_request_body_payment_method_data_billing_details_email.dart';
import './confirm_post_request_body_payment_method_data_billing_details_name.dart';
import './confirm_post_request_body_payment_method_data_billing_details_phone.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodDataBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress? address;

  ///  The email property
  ConfirmPostRequestBodyPaymentMethodDataBillingDetailsEmail? email;

  ///  The name property
  ConfirmPostRequestBodyPaymentMethodDataBillingDetailsName? name;

  ///  The phone property
  ConfirmPostRequestBodyPaymentMethodDataBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodDataBillingDetails] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodDataBillingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodDataBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodDataBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        ConfirmPostRequestBodyPaymentMethodDataBillingDetailsEmail
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsName>(
        ConfirmPostRequestBodyPaymentMethodDataBillingDetailsName
            .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        ConfirmPostRequestBodyPaymentMethodDataBillingDetailsPhone
            .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
