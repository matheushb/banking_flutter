import 'package:banking_with_dart/domain/client.dart';
import 'package:uuid/v4.dart';

class BankAccount {
  late final UuidV4 _accountId;
  int _balance = 0;
  late final Client _client;

  BankAccount(Client client) {
    _accountId = const UuidV4();
    _client = client;
  }

  getBalance() {
    return _balance;
  }

  Client getClient() {
    return _client;
  }

  void withdraw(int quantity) {
    if (_balance - quantity < 0) throw Error();
    _balance -= quantity;
  }

  void deposit(int quantity) {
    _balance += quantity;
  }

  UuidV4 getId() {
    return _accountId;
  }
}
