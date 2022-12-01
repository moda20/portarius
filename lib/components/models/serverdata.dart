class ServerData {
  final String baseUrl;
  final String? endpoint;
  final String token;
  final String name;

  ServerData({
    required this.baseUrl,
    this.endpoint,
    required this.token,
    required this.name,
  });

  factory ServerData.fromJson(Map<dynamic, dynamic> json) {
    return ServerData(
      baseUrl: json['baseUrl'] as String,
      endpoint: json['endpoint'] as String,
      token: json['token'] as String,
      name: (json['name'] ?? '') as String,
    );
  }

  // copy with
  ServerData copyWith({
    String? baseUrl,
    String? endpoint,
    String? token,
    String? name,
  }) {
    return ServerData(
      baseUrl: baseUrl ?? this.baseUrl,
      endpoint: endpoint ?? this.endpoint,
      token: token ?? this.token,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'baseUrl': baseUrl,
      'endpoint': endpoint,
      'token': token,
      'name': name,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ServerData &&
        other.baseUrl == baseUrl &&
        other.token == token;
  }

  @override
  // TODO: implement hashCode
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}
