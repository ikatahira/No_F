class Cliente {
  final int? id;
  final String nome;
  final String? telefone;
  final double limiteCredito;
  final String createdAt;

  Cliente({
    this.id,
    required this.nome,
    this.telefone,
    this.limiteCredito = 0.0,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'nome': nome,
      'telefone': telefone,
      'limite_credito': limiteCredito,
      'created_at': createdAt,
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'],
      nome: map['nome'],
      telefone: map['telefone'],
      limiteCredito: (map['limite_credito'] as num?)?.toDouble() ?? 0.0,
      createdAt: map['created_at'],
    );
  }

  String get iniciais {
    final partes = nome.trim().split(' ');
    if (partes.length >= 2) {
      return '${partes[0][0]}${partes[1][0]}'.toUpperCase();
    }
    return nome.substring(0, 2).toUpperCase();
  }

  Cliente copyWith({
    int? id,
    String? nome,
    String? telefone,
    double? limiteCredito,
    String? createdAt,
  }) {
    return Cliente(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      limiteCredito: limiteCredito ?? this.limiteCredito,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
