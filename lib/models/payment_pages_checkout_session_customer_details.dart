// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './payment_pages_checkout_session_customer_details_tax_exempt.dart';
import './payment_pages_checkout_session_tax_id.dart';

/// auto generated
class PaymentPagesCheckoutSessionCustomerDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's address after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
  Address? address;

  ///  The customer's business name after a completed Checkout Session.
  String? businessName;

  ///  The email associated with the Customer, if one exists, on the Checkout Session after a completed Checkout Session or at time of session expiry.Otherwise, if the customer has consented to promotional content, this value is the most recent valid email provided by the customer on the Checkout form.
  String? email;

  ///  The customer's individual name after a completed Checkout Session.
  String? individualName;

  ///  The customer's name after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
  String? name;

  ///  The customer's phone number after a completed Checkout Session.
  String? phone;

  ///  The customer’s tax exempt status after a completed Checkout Session.
  PaymentPagesCheckoutSessionCustomerDetailsTaxExempt? taxExempt;

  ///  The customer’s tax IDs after a completed Checkout Session.
  Iterable<PaymentPagesCheckoutSessionTaxId>? taxIds;

  /// Instantiates a new [PaymentPagesCheckoutSessionCustomerDetails] and sets the default values.
  PaymentPagesCheckoutSessionCustomerDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCustomerDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCustomerDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['business_name'] =
        (node) => businessName = node.getStringValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['individual_name'] =
        (node) => individualName = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['tax_exempt'] = (node) => taxExempt =
        node.getEnumValue<PaymentPagesCheckoutSessionCustomerDetailsTaxExempt>(
            (stringValue) => PaymentPagesCheckoutSessionCustomerDetailsTaxExempt
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_ids'] = (node) => taxIds =
        node.getCollectionOfObjectValues<PaymentPagesCheckoutSessionTaxId>(
            PaymentPagesCheckoutSessionTaxId.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeStringValue('business_name', businessName);
    writer.writeStringValue('email', email);
    writer.writeStringValue('individual_name', individualName);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<PaymentPagesCheckoutSessionCustomerDetailsTaxExempt>(
        'tax_exempt', taxExempt, (e) => e?.value);
    writer.writeCollectionOfObjectValues<PaymentPagesCheckoutSessionTaxId>(
        'tax_ids', taxIds);
    writer.writeAdditionalData(additionalData);
  }
}
