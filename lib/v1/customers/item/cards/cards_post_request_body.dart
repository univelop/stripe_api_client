// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_bank_account.dart';
import './cards_post_request_body_card.dart';
import './cards_post_request_body_metadata.dart';

/// auto generated
class CardsPostRequestBody implements Parsable {
  ///  A token returned by [Stripe.js](https://stripe.com/docs/js) representing the user’s Alipay account details.
  String? alipayAccount;

  ///  Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
  CardsPostRequestBodyBankAccount? bankAccount;

  ///  A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
  CardsPostRequestBodyCard? card;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CardsPostRequestBodyMetadata? metadata;

  ///  Please refer to full [documentation](https://api.stripe.com) instead.
  String? source;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alipay_account'] =
        (node) => alipayAccount = node.getStringValue();
    deserializerMap['bank_account'] = (node) => bankAccount =
        node.getObjectValue<CardsPostRequestBodyBankAccount>(
            CardsPostRequestBodyBankAccount.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<CardsPostRequestBodyCard>(
            CardsPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CardsPostRequestBodyMetadata>(
            CardsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('alipay_account', alipayAccount);
    writer.writeObjectValue<CardsPostRequestBodyBankAccount>(
        'bank_account', bankAccount);
    writer.writeObjectValue<CardsPostRequestBodyCard>('card', card);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CardsPostRequestBodyMetadata>('metadata', metadata);
    writer.writeStringValue('source', source);
  }
}
