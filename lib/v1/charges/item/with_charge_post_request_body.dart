// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_charge_post_request_body_fraud_details.dart';
import './with_charge_post_request_body_shipping.dart';

/// auto generated
class WithChargePostRequestBody implements Parsable {
  ///  The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
  String? customer;

  ///  An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
  WithChargePostRequestBodyFraudDetails? fraudDetails;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
  String? receiptEmail;

  ///  Shipping information for the charge. Helps prevent fraud on charges for physical goods.
  WithChargePostRequestBodyShipping? shipping;

  ///  A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details.
  String? transferGroup;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithChargePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithChargePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['fraud_details'] = (node) => fraudDetails =
        node.getObjectValue<WithChargePostRequestBodyFraudDetails>(
            WithChargePostRequestBodyFraudDetails.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['receipt_email'] =
        (node) => receiptEmail = node.getStringValue();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<WithChargePostRequestBodyShipping>(
            WithChargePostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithChargePostRequestBodyFraudDetails>(
        'fraud_details', fraudDetails);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('receipt_email', receiptEmail);
    writer.writeObjectValue<WithChargePostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeStringValue('transfer_group', transferGroup);
  }
}
