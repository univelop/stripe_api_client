// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cash_balance_available.dart';
import './cash_balance_object.dart';
import './customer_balance_customer_balance_settings.dart';

/// auto generated
/// A customer's `Cash balance` represents real funds. Customers can add funds to their cash balance by sending a bank transfer. These funds can be used for payment and can eventually be paid out to your bank account.
class CashBalance implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A hash of all cash balances available to this customer. You cannot delete a customer with any cash balances, even if the balance is 0. Amounts are represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  CashBalanceAvailable? available;

  ///  The ID of the customer whose cash balance this object represents.
  String? customer;

  ///  The ID of an Account representing a customer whose cash balance this object represents.
  String? customerAccount;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  CashBalanceObject? object;

  ///  The settings property
  CustomerBalanceCustomerBalanceSettings? settings;

  /// Instantiates a new [CashBalance] and sets the default values.
  CashBalance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CashBalance createFromDiscriminatorValue(ParseNode parseNode) {
    return CashBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available'] = (node) => available =
        node.getObjectValue<CashBalanceAvailable>(
            CashBalanceAvailable.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CashBalanceObject>((stringValue) => CashBalanceObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['settings'] = (node) => settings = node.getObjectValue<
            CustomerBalanceCustomerBalanceSettings>(
        CustomerBalanceCustomerBalanceSettings.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CashBalanceAvailable>('available', available);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<CashBalanceObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<CustomerBalanceCustomerBalanceSettings>(
        'settings', settings);
    writer.writeAdditionalData(additionalData);
  }
}
