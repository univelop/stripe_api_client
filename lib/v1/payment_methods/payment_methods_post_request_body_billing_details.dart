// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_methods_post_request_body_billing_details_address.dart';
import './payment_methods_post_request_body_billing_details_email.dart';
import './payment_methods_post_request_body_billing_details_name.dart';
import './payment_methods_post_request_body_billing_details_phone.dart';

/// auto generated
/// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
class PaymentMethodsPostRequestBodyBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  PaymentMethodsPostRequestBodyBillingDetailsAddress? address;

  ///  The email property
  PaymentMethodsPostRequestBodyBillingDetailsEmail? email;

  ///  The name property
  PaymentMethodsPostRequestBodyBillingDetailsName? name;

  ///  The phone property
  PaymentMethodsPostRequestBodyBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [PaymentMethodsPostRequestBodyBillingDetails] and sets the default values.
  PaymentMethodsPostRequestBodyBillingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodsPostRequestBodyBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<PaymentMethodsPostRequestBodyBillingDetailsAddress>(
            PaymentMethodsPostRequestBodyBillingDetailsAddress
                .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email =
        node.getObjectValue<PaymentMethodsPostRequestBodyBillingDetailsEmail>(
            PaymentMethodsPostRequestBodyBillingDetailsEmail
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name =
        node.getObjectValue<PaymentMethodsPostRequestBodyBillingDetailsName>(
            PaymentMethodsPostRequestBodyBillingDetailsName
                .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone =
        node.getObjectValue<PaymentMethodsPostRequestBodyBillingDetailsPhone>(
            PaymentMethodsPostRequestBodyBillingDetailsPhone
                .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBillingDetailsPhone>(
        'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
