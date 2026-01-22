// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './reject_post_request_body_rejection_reasons_card_logo.dart';
import './reject_post_request_body_rejection_reasons_carrier_text.dart';

/// auto generated
/// The reason(s) the personalization design was rejected.
class RejectPostRequestBodyRejectionReasons
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_logo property
  Iterable<RejectPostRequestBodyRejectionReasonsCardLogo>? cardLogo;

  ///  The carrier_text property
  Iterable<RejectPostRequestBodyRejectionReasonsCarrierText>? carrierText;

  /// Instantiates a new [RejectPostRequestBodyRejectionReasons] and sets the default values.
  RejectPostRequestBodyRejectionReasons() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RejectPostRequestBodyRejectionReasons createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RejectPostRequestBodyRejectionReasons();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_logo'] = (node) => cardLogo =
        node.getCollectionOfEnumValues<
                RejectPostRequestBodyRejectionReasonsCardLogo>(
            (stringValue) => RejectPostRequestBodyRejectionReasonsCardLogo
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['carrier_text'] = (node) => carrierText =
        node.getCollectionOfEnumValues<
                RejectPostRequestBodyRejectionReasonsCarrierText>(
            (stringValue) => RejectPostRequestBodyRejectionReasonsCarrierText
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            RejectPostRequestBodyRejectionReasonsCardLogo>(
        'card_logo', cardLogo, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            RejectPostRequestBodyRejectionReasonsCarrierText>(
        'carrier_text', carrierText, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
