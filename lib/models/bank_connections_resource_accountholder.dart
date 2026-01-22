// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_accountholder_account.dart';
import './bank_connections_resource_accountholder_customer.dart';
import './bank_connections_resource_accountholder_type.dart';

/// auto generated
class BankConnectionsResourceAccountholder
    implements AdditionalDataHolder, Parsable {
  ///  The ID of the Stripe account that this account belongs to. Only available when `account_holder.type` is `account`.
  BankConnectionsResourceAccountholderAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID for an Account representing a customer that this account belongs to. Only available when `account_holder.type` is `customer`.
  BankConnectionsResourceAccountholderCustomer? customer;

  ///  The customer_account property
  String? customerAccount;

  ///  Type of account holder that this account belongs to.
  BankConnectionsResourceAccountholderType? type_;

  /// Instantiates a new [BankConnectionsResourceAccountholder] and sets the default values.
  BankConnectionsResourceAccountholder() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceAccountholder createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BankConnectionsResourceAccountholder();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<BankConnectionsResourceAccountholderAccount>(
            BankConnectionsResourceAccountholderAccount
                .createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<BankConnectionsResourceAccountholderCustomer>(
            BankConnectionsResourceAccountholderCustomer
                .createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BankConnectionsResourceAccountholderType>(
            (stringValue) => BankConnectionsResourceAccountholderType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankConnectionsResourceAccountholderAccount>(
        'account', account);
    writer.writeObjectValue<BankConnectionsResourceAccountholderCustomer>(
        'customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeEnumValue<BankConnectionsResourceAccountholderType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
