// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_bank_account_member1.dart';

/// auto generated
/// Composed type wrapper for classes [SourcesPostRequestBodyBankAccountMember1], [String?]
class SourcesPostRequestBodyBankAccount implements Parsable {
  ///  Composed type representation for type [SourcesPostRequestBodyBankAccountMember1]
  SourcesPostRequestBodyBankAccountMember1?
      sourcesPostRequestBodyBankAccountMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodyBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = SourcesPostRequestBodyBankAccount();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.sourcesPostRequestBodyBankAccountMember1 =
          SourcesPostRequestBodyBankAccountMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (sourcesPostRequestBodyBankAccountMember1 != null) {
      sourcesPostRequestBodyBankAccountMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<SourcesPostRequestBodyBankAccountMember1>(
          null, sourcesPostRequestBodyBankAccountMember1);
    }
  }
}
