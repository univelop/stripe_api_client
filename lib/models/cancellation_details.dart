// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cancellation_details_feedback.dart';
import './cancellation_details_reason.dart';

/// auto generated
class CancellationDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
  String? comment;

  ///  The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
  CancellationDetailsFeedback? feedback;

  ///  Why this subscription was canceled.
  CancellationDetailsReason? reason;

  /// Instantiates a new [CancellationDetails] and sets the default values.
  CancellationDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CancellationDetails createFromDiscriminatorValue(ParseNode parseNode) {
    return CancellationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['comment'] = (node) => comment = node.getStringValue();
    deserializerMap['feedback'] = (node) => feedback =
        node.getEnumValue<CancellationDetailsFeedback>((stringValue) =>
            CancellationDetailsFeedback.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<CancellationDetailsReason>((stringValue) =>
            CancellationDetailsReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('comment', comment);
    writer.writeEnumValue<CancellationDetailsFeedback>(
        'feedback', feedback, (e) => e?.value);
    writer.writeEnumValue<CancellationDetailsReason>(
        'reason', reason, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
