// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_attempt_post_request_body_payment_method_details_billing_details_address.dart';

/// auto generated
class ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetailsAddress?
      address;

  ///  The email property
  String? email;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  /// Instantiates a new [ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails] and sets the default values.
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetailsAddress>(
        ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetailsAddress
            .createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetailsAddress>(
        'address', address);
    writer.writeStringValue('email', email);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
