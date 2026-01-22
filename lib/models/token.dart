// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_account.dart';
import './card.dart';
import './token_object.dart';

/// auto generated
/// Tokenization is the process Stripe uses to collect sensitive card or bankaccount details, or personally identifiable information (PII), directly fromyour customers in a secure manner. A token representing this information isreturned to your server to use. Use our[recommended payments integrations](https://docs.stripe.com/payments) to perform this processon the client-side. This guarantees that no sensitive card data touches your server,and allows your integration to operate in a PCI-compliant way.If you can't use client-side tokenization, you can also create tokens usingthe API with either your publishable or secret API key. Ifyour integration uses this method, you're responsible for any PCI compliancethat it might require, and you must keep your secret API key safe. Unlike withclient-side tokenization, your customer's information isn't sent directly toStripe, so we can't determine how it's handled or stored.You can't store or use tokens more than once. To store card or bank accountinformation for later use, create [Customer](https://docs.stripe.com/api#customers)objects or [External accounts](/api#external_accounts).[Radar](https://docs.stripe.com/radar), our integrated solution for automatic fraud protection,performs best with integrations that use client-side tokenization.
class Token implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  These bank accounts are payment methods on `Customer` objects.On the other hand [External Accounts](/api#external_accounts) are transferdestinations on `Account` objects for connected accounts.They can be bank accounts or debit cards as well, and are documented in the links above.Related guide: [Bank debits and transfers](/payments/bank-debits-transfers)
  BankAccount? bankAccount;

  ///  You can store multiple cards on a customer in order to charge the customerlater. You can also store multiple debit cards on a recipient in order totransfer to those cards later.Related guide: [Card payments with Sources](https://docs.stripe.com/sources/cards)
  Card? card;

  ///  IP address of the client that generates the token.
  String? clientIp;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  TokenObject? object;

  ///  Type of the token: `account`, `bank_account`, `card`, or `pii`.
  String? type_;

  ///  Determines if you have already used this token (you can only use tokens once).
  bool? used;

  /// Instantiates a new [Token] and sets the default values.
  Token() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Token createFromDiscriminatorValue(ParseNode parseNode) {
    return Token();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account'] = (node) => bankAccount = node
        .getObjectValue<BankAccount>(BankAccount.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) =>
        card = node.getObjectValue<Card>(Card.createFromDiscriminatorValue);
    deserializerMap['client_ip'] = (node) => clientIp = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TokenObject>((stringValue) => TokenObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['used'] = (node) => used = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankAccount>('bank_account', bankAccount);
    writer.writeObjectValue<Card>('card', card);
    writer.writeStringValue('client_ip', clientIp);
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<TokenObject>('object', object, (e) => e?.value);
    writer.writeStringValue('type', type_);
    writer.writeBoolValue('used', value: used);
    writer.writeAdditionalData(additionalData);
  }
}
