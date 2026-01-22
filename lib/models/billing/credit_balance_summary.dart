// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../credit_balance.dart';
import './credit_balance_summary_customer.dart';
import './credit_balance_summary_object.dart';

/// auto generated
/// Indicates the billing credit balance for billing credits granted to a customer.
class CreditBalanceSummary implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
  Iterable<CreditBalance>? balances;

  ///  The customer the balance is for.
  CreditBalanceSummaryCustomer? customer;

  ///  The account the balance is for.
  String? customerAccount;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  CreditBalanceSummaryObject? object;

  /// Instantiates a new [CreditBalanceSummary] and sets the default values.
  CreditBalanceSummary() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditBalanceSummary createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditBalanceSummary();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['balances'] = (node) => balances =
        node.getCollectionOfObjectValues<CreditBalance>(
            CreditBalance.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<CreditBalanceSummaryCustomer>(
            CreditBalanceSummaryCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CreditBalanceSummaryObject>((stringValue) =>
            CreditBalanceSummaryObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<CreditBalance>('balances', balances);
    writer.writeObjectValue<CreditBalanceSummaryCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<CreditBalanceSummaryObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
