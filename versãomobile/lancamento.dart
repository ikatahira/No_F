class Lancamento {
  final int? id;
  final int clienteId;
  final String tipo; // 'fiado' ou 'pagamento'
  final String? descricao;
  final double valor;
  final String data;
  final String? observacao;

  Lancamento({
    this.id,
    required this.clienteId,
    required this.tipo,
    this.descricao,
    required this.valor,
    required this.data,
    this.observacao,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'cliente_id': clienteId,
      'tipo': tipo,
      'descricao': descricao,
      'valor': valor,
      'data': data,
      'observacao': observacao,
    };
  }

  factory Lancamento.fromMap(Map<String, dynamic> map) {
    return Lancamento(
      id: map['id'],
      clienteId: map['cliente_id'],
      tipo: map['tipo'],
      descricao: map['descricao'],
      valor: (map['valor'] as num).toDouble(),
      data: map['data'],
      observacao: map['observacao'],
    );
  }

  bool get isFiado => tipo == 'fiado';

  DateTime get dataDateTime => DateTime.parse(data);
}
