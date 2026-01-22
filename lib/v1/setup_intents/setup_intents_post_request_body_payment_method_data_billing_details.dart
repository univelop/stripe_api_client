// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_data_billing_details_address.dart';
import './setup_intents_post_request_body_payment_method_data_billing_details_email.dart';
import './setup_intents_post_request_body_payment_method_data_billing_details_name.dart';
import './setup_intents_post_request_body_payment_method_data_billing_details_phone.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress? address;

  ///  The email property
  SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail? email;

  ///  The name property
  SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsName? name;

  ///  The phone property
  SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone? phone;

  ///  The tax_id property
  String? taxId;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsName>(
        SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsName
            .createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone
            .createFromDiscriminatorValue);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsAddress>(
        'address', address);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsEmail>(
        'email', email);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsName>(
        'name', name);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetailsPhone>(
        'phone', phone);
    writer.writeStringValue('tax_id', taxId);
    writer.writeAdditionalData(additionalData);
  }
}
