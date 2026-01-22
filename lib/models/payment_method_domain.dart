// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_domain_object.dart';
import './payment_method_domain_resource_payment_method_status.dart';

/// auto generated
/// A payment method domain represents a web domain that you have registered with Stripe.Stripe Elements use registered payment method domains to control where certain payment methods are shown.Related guide: [Payment method domains](https://docs.stripe.com/payments/payment-methods/pmd-registration).
class PaymentMethodDomain implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates the status of a specific payment method on a payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatus? amazonPay;

  ///  Indicates the status of a specific payment method on a payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatus? applePay;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The domain name that this payment method domain object represents.
  String? domainName;

  ///  Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
  bool? enabled;

  ///  Indicates the status of a specific payment method on a payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatus? googlePay;

  ///  Unique identifier for the object.
  String? id;

  ///  Indicates the status of a specific payment method on a payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatus? klarna;

  ///  Indicates the status of a specific payment method on a payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatus? link;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentMethodDomainObject? object;

  ///  Indicates the status of a specific payment method on a payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatus? paypal;

  /// Instantiates a new [PaymentMethodDomain] and sets the default values.
  PaymentMethodDomain() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDomain createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodDomain();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
            PaymentMethodDomainResourcePaymentMethodStatus
                .createFromDiscriminatorValue);
    deserializerMap['apple_pay'] = (node) => applePay =
        node.getObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
            PaymentMethodDomainResourcePaymentMethodStatus
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['domain_name'] =
        (node) => domainName = node.getStringValue();
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['google_pay'] = (node) => googlePay =
        node.getObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
            PaymentMethodDomainResourcePaymentMethodStatus
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
            PaymentMethodDomainResourcePaymentMethodStatus
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
            PaymentMethodDomainResourcePaymentMethodStatus
                .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentMethodDomainObject>((stringValue) =>
            PaymentMethodDomainObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
            PaymentMethodDomainResourcePaymentMethodStatus
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
        'apple_pay', applePay);
    writer.writeIntValue('created', created);
    writer.writeStringValue('domain_name', domainName);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
        'google_pay', googlePay);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
        'klarna', klarna);
    writer.writeObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
        'link', link);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<PaymentMethodDomainObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodDomainResourcePaymentMethodStatus>(
        'paypal', paypal);
    writer.writeAdditionalData(additionalData);
  }
}
