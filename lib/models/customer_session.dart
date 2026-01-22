// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_customer.dart';
import './customer_session_object.dart';
import './customer_session_resource_components.dart';

/// auto generated
/// A Customer Session allows you to grant Stripe's frontend SDKs (like Stripe.js) client-side accesscontrol over a Customer.Related guides: [Customer Session with the Payment Element](/payments/accept-a-payment-deferred?platform=web&type=payment#save-payment-methods),[Customer Session with the Pricing Table](/payments/checkout/pricing-table#customer-session),[Customer Session with the Buy Button](/payment-links/buy-button#pass-an-existing-customer).
class CustomerSession implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The client secret of this Customer Session. Used on the client to set up secure access to the given `customer`.The client secret can be used to provide access to `customer` from your frontend. It should not be stored, logged, or exposed to anyone other than the relevant customer. Make sure that you have TLS enabled on any page that includes the client secret.
  String? clientSecret;

  ///  Configuration for the components supported by this Customer Session.
  CustomerSessionResourceComponents? components;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The Customer the Customer Session was created for.
  CustomerSessionCustomer? customer;

  ///  The Account that the Customer Session was created for.
  String? customerAccount;

  ///  The timestamp at which this Customer Session will expire.
  int? expiresAt;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  CustomerSessionObject? object;

  /// Instantiates a new [CustomerSession] and sets the default values.
  CustomerSession() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSession createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSession();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['components'] = (node) => components =
        node.getObjectValue<CustomerSessionResourceComponents>(
            CustomerSessionResourceComponents.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<CustomerSessionCustomer>(
            CustomerSessionCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CustomerSessionObject>((stringValue) =>
            CustomerSessionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeObjectValue<CustomerSessionResourceComponents>(
        'components', components);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<CustomerSessionCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<CustomerSessionObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
