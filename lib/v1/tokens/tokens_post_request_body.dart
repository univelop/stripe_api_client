// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account.dart';
import './tokens_post_request_body_bank_account.dart';
import './tokens_post_request_body_card.dart';
import './tokens_post_request_body_cvc_update.dart';
import './tokens_post_request_body_person.dart';
import './tokens_post_request_body_pii.dart';

/// auto generated
class TokensPostRequestBody implements Parsable {
  ///  Information for the account this token represents.
  TokensPostRequestBodyAccount? account;

  ///  The bank account this token will represent.
  TokensPostRequestBodyBankAccount? bankAccount;

  ///  The card this token will represent. If you also pass in a customer, the card must be the ID of a card belonging to the customer. Otherwise, if you do not pass in a customer, this is a dictionary containing a user's credit card details, with the options described below.
  TokensPostRequestBodyCard? card;

  ///  Create a token for the customer, which is owned by the application's account. You can only use this with an [OAuth access token](https://docs.stripe.com/connect/standard-accounts) or [Stripe-Account header](https://docs.stripe.com/connect/authentication). Learn more about [cloning saved payment methods](https://docs.stripe.com/connect/cloning-saved-payment-methods).
  String? customer;

  ///  The updated CVC value this token represents.
  TokensPostRequestBodyCvcUpdate? cvcUpdate;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information for the person this token represents.
  TokensPostRequestBodyPerson? person;

  ///  The PII this token represents.
  TokensPostRequestBodyPii? pii;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<TokensPostRequestBodyAccount>(
            TokensPostRequestBodyAccount.createFromDiscriminatorValue);
    deserializerMap['bank_account'] = (node) => bankAccount =
        node.getObjectValue<TokensPostRequestBodyBankAccount>(
            TokensPostRequestBodyBankAccount.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<TokensPostRequestBodyCard>(
            TokensPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['cvc_update'] = (node) => cvcUpdate =
        node.getObjectValue<TokensPostRequestBodyCvcUpdate>(
            TokensPostRequestBodyCvcUpdate.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['person'] = (node) => person =
        node.getObjectValue<TokensPostRequestBodyPerson>(
            TokensPostRequestBodyPerson.createFromDiscriminatorValue);
    deserializerMap['pii'] = (node) => pii =
        node.getObjectValue<TokensPostRequestBodyPii>(
            TokensPostRequestBodyPii.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TokensPostRequestBodyAccount>('account', account);
    writer.writeObjectValue<TokensPostRequestBodyBankAccount>(
        'bank_account', bankAccount);
    writer.writeObjectValue<TokensPostRequestBodyCard>('card', card);
    writer.writeStringValue('customer', customer);
    writer.writeObjectValue<TokensPostRequestBodyCvcUpdate>(
        'cvc_update', cvcUpdate);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<TokensPostRequestBodyPerson>('person', person);
    writer.writeObjectValue<TokensPostRequestBodyPii>('pii', pii);
  }
}
