// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../billing_credit_grants_resource_amount.dart';
import '../billing_credit_grants_resource_applicability_config.dart';
import './credit_grant_category.dart';
import './credit_grant_customer.dart';
import './credit_grant_metadata.dart';
import './credit_grant_object.dart';
import './credit_grant_test_clock.dart';

/// auto generated
/// A credit grant is an API resource that documents the allocation of some billing credits to a customer.Related guide: [Billing credits](https://docs.stripe.com/billing/subscriptions/usage-based/billing-credits)
class CreditGrant implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  BillingCreditGrantsResourceAmount? amount;

  ///  The applicability_config property
  BillingCreditGrantsResourceApplicabilityConfig? applicabilityConfig;

  ///  The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
  CreditGrantCategory? category;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  ID of the customer receiving the billing credits.
  CreditGrantCustomer? customer;

  ///  ID of the account representing the customer receiving the billing credits
  String? customerAccount;

  ///  The time when the billing credits become effective-when they're eligible for use.
  int? effectiveAt;

  ///  The time when the billing credits expire. If not present, the billing credits don't expire.
  int? expiresAt;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CreditGrantMetadata? metadata;

  ///  A descriptive name shown in dashboard.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  CreditGrantObject? object;

  ///  The priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
  int? priority;

  ///  ID of the test clock this credit grant belongs to.
  CreditGrantTestClock? testClock;

  ///  Time at which the object was last updated. Measured in seconds since the Unix epoch.
  int? updated;

  ///  The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
  int? voidedAt;

  /// Instantiates a new [CreditGrant] and sets the default values.
  CreditGrant() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditGrant createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditGrant();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<BillingCreditGrantsResourceAmount>(
            BillingCreditGrantsResourceAmount.createFromDiscriminatorValue);
    deserializerMap['applicability_config'] = (node) => applicabilityConfig =
        node.getObjectValue<BillingCreditGrantsResourceApplicabilityConfig>(
            BillingCreditGrantsResourceApplicabilityConfig
                .createFromDiscriminatorValue);
    deserializerMap['category'] = (node) => category =
        node.getEnumValue<CreditGrantCategory>((stringValue) =>
            CreditGrantCategory.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<CreditGrantCustomer>(
            CreditGrantCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreditGrantMetadata>(
            CreditGrantMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CreditGrantObject>((stringValue) => CreditGrantObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['priority'] = (node) => priority = node.getIntValue();
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<CreditGrantTestClock>(
            CreditGrantTestClock.createFromDiscriminatorValue);
    deserializerMap['updated'] = (node) => updated = node.getIntValue();
    deserializerMap['voided_at'] = (node) => voidedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BillingCreditGrantsResourceAmount>(
        'amount', amount);
    writer.writeObjectValue<BillingCreditGrantsResourceApplicabilityConfig>(
        'applicability_config', applicabilityConfig);
    writer.writeEnumValue<CreditGrantCategory>(
        'category', category, (e) => e?.value);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<CreditGrantCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CreditGrantMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<CreditGrantObject>('object', object, (e) => e?.value);
    writer.writeIntValue('priority', priority);
    writer.writeObjectValue<CreditGrantTestClock>('test_clock', testClock);
    writer.writeIntValue('updated', updated);
    writer.writeIntValue('voided_at', voidedAt);
    writer.writeAdditionalData(additionalData);
  }
}
