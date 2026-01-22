// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_method_post_request_body_billing_details_address.dart';
import './with_payment_method_post_request_body_billing_details_email.dart';
import './with_payment_method_post_request_body_billing_details_name.dart';
import './with_payment_method_post_request_body_billing_details_phone.dart';

/// auto generated
/// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
class WithPaymentMethodPostRequestBodyBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithPaymentMethodPostRequestBodyBillingDetailsAddress? address;

  ///  The email property
  WithPaymentMethodPostRequestBodyBillingDetailsEmail? email;

  ///  The name property
  WithPaymentMethodPostRequestBodyBillingDetailsName? name;

  ///  The phone property
  WithPaymentMethodPostRequestBodyBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [WithPaymentMethodPostRequestBodyBillingDetails] and sets the default values.
  WithPaymentMethodPostRequestBodyBillingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodPostRequestBodyBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentMethodPostRequestBodyBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node
        .getObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsAddress>(
            WithPaymentMethodPostRequestBodyBillingDetailsAddress
                .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node
        .getObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsEmail>(
            WithPaymentMethodPostRequestBodyBillingDetailsEmail
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name =
        node.getObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsName>(
            WithPaymentMethodPostRequestBodyBillingDetailsName
                .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node
        .getObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsPhone>(
            WithPaymentMethodPostRequestBodyBillingDetailsPhone
                .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentMethodPostRequestBodyBillingDetailsAddress>(
        'address', address);
    writer
        .writeObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsEmail>(
            'email', email);
    writer.writeObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsName>(
        'name', name);
    writer
        .writeObjectValue<WithPaymentMethodPostRequestBodyBillingDetailsPhone>(
            'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
