import 'package:flutter_socket_io/socket_io_manager.dart';
import 'package:flutter_socket_io/flutter_socket_io.dart';

Future connectSocket() {
  SocketIO socketIO;
  socketIO = SocketIOManager().createSocketIO(
    'https://meroo-chat.herokuapp.com',
    '/',
  );
  //Call init before doing anything with socket
  socketIO.init();
  //Connect to the socket
  return socketIO.connect();
}
