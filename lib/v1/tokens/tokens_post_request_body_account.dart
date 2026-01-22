// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account_business_type.dart';
import './tokens_post_request_body_account_company.dart';
import './tokens_post_request_body_account_individual.dart';

/// auto generated
/// Information for the account this token represents.
class TokensPostRequestBodyAccount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The business_type property
  TokensPostRequestBodyAccountBusinessType? businessType;

  ///  The company property
  TokensPostRequestBodyAccountCompany? company;

  ///  The individual property
  TokensPostRequestBodyAccountIndividual? individual;

  ///  The tos_shown_and_accepted property
  bool? tosShownAndAccepted;

  /// Instantiates a new [TokensPostRequestBodyAccount] and sets the default values.
  TokensPostRequestBodyAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business_type'] = (node) => businessType =
        node.getEnumValue<TokensPostRequestBodyAccountBusinessType>(
            (stringValue) => TokensPostRequestBodyAccountBusinessType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<TokensPostRequestBodyAccountCompany>(
            TokensPostRequestBodyAccountCompany.createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual = node.getObjectValue<
            TokensPostRequestBodyAccountIndividual>(
        TokensPostRequestBodyAccountIndividual.createFromDiscriminatorValue);
    deserializerMap['tos_shown_and_accepted'] =
        (node) => tosShownAndAccepted = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TokensPostRequestBodyAccountBusinessType>(
        'business_type', businessType, (e) => e?.value);
    writer.writeObjectValue<TokensPostRequestBodyAccountCompany>(
        'company', company);
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividual>(
        'individual', individual);
    writer.writeBoolValue('tos_shown_and_accepted', value: tosShownAndAccepted);
    writer.writeAdditionalData(additionalData);
  }
}
