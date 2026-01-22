// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_links_post_request_body_collect.dart';
import './account_links_post_request_body_collection_options.dart';
import './account_links_post_request_body_type.dart';

/// auto generated
class AccountLinksPostRequestBody implements Parsable {
  ///  The identifier of the account to create an account link for.
  String? account;

  ///  The collect parameter is deprecated. Use `collection_options` instead.
  AccountLinksPostRequestBodyCollect? collect;

  ///  Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
  AccountLinksPostRequestBodyCollectionOptions? collectionOptions;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link's URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
  String? refreshUrl;

  ///  The URL that the user will be redirected to upon leaving or completing the linked flow.
  String? returnUrl;

  ///  The type of account link the user is requesting.You can create Account Links of type `account_update` only for connected accounts where your platform is responsible for collecting requirements, including Custom accounts. You can't create them for accounts that have access to a Stripe-hosted Dashboard. If you use [Connect embedded components](/connect/get-started-connect-embedded-components), you can include components that allow your connected accounts to update their own information. For an account without Stripe-hosted Dashboard access where Stripe is liable for negative balances, you must use embedded components.
  AccountLinksPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountLinksPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountLinksPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['collect'] = (node) => collect =
        node.getEnumValue<AccountLinksPostRequestBodyCollect>((stringValue) =>
            AccountLinksPostRequestBodyCollect.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['collection_options'] = (node) => collectionOptions =
        node.getObjectValue<AccountLinksPostRequestBodyCollectionOptions>(
            AccountLinksPostRequestBodyCollectionOptions
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['refresh_url'] =
        (node) => refreshUrl = node.getStringValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<AccountLinksPostRequestBodyType>((stringValue) =>
            AccountLinksPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeEnumValue<AccountLinksPostRequestBodyCollect>(
        'collect', collect, (e) => e?.value);
    writer.writeObjectValue<AccountLinksPostRequestBodyCollectionOptions>(
        'collection_options', collectionOptions);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('refresh_url', refreshUrl);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeEnumValue<AccountLinksPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
