// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './application.dart';
import './deleted_application.dart';

/// auto generated
/// Composed type wrapper for classes [Application], [DeletedApplication], [String?]
class QuoteApplication implements Parsable {
  ///  Composed type representation for type [Application]
  Application? application;

  ///  Composed type representation for type [DeletedApplication]
  DeletedApplication? deletedApplication;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuoteApplication createFromDiscriminatorValue(ParseNode parseNode) {
    var result = QuoteApplication();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.application = Application();
      result.deletedApplication = DeletedApplication();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (application != null) {
      application!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (deletedApplication != null) {
      deletedApplication!
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
      writer.writeObjectValue<Application>(
          null, application, [deletedApplication]);
    }
  }
}
