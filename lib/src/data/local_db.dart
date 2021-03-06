import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/entity/message.dart';
import 'package:whatsapp_api/src/domain/entity/type_message.dart';

final users = [
  {"username": "usuario", "password": "123456"},
  {"username": "usuario2", "password": "123456"},
  {"username": "usuario3", "password": "123456"},
];

final contacts = [
  new Contact(
      name: "Roy Shicshe",
      lastEvent: 1,
      lastMessage: "Yes, 2pm is ok",
      lastMessageTime: "11/19/19",
      isActive: true,
      avatarUrl:"https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/imujer/p/por-que-nos-atraen-los-hombres-con-barba-2.jpg"),
  new Contact(
      name: "Ronal Gonzales",
      lastEvent: 1,
      lastMessage: "What kink of strategy is better",
      lastMessageTime: "11/16/19",
      isActive: true,
      avatarUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS20vDpngL0rl9Deoi8fuT1OvQsBH3UVuOONQ&usqp=CAU"),
  new Contact(
      name: "Donny Florian",
      lastEvent: 2,
      lastMessage: "0:14",
      lastMessageTime: "11/15/19",
      isActive: true,
      avatarUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQryBSaIyc9nL_3aof0knRfpS5jIxsy69PLnA&usqp=CAU"),
  new Contact(
      name: "Abraham Alcala",
      lastEvent: 1,
      lastMessage: "Bro, I have a good idea!",
      lastMessageTime: "10/30/19",
      isActive: true,
      avatarUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkO7TAuVTvbU1kMwS1iYjRBaGHu9EWRyftQw&usqp=CAU"),
  new Contact(
      name: "Daniel Roncal",
      lastEvent: 3,
      lastMessage: "Photo",
      lastMessageTime: "8/25/19",
      isActive: true,
      avatarUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ93p_IDY6lRwnAdc77xzbwDgRyEtIE9zjiNQ&usqp=CAU"),
];

final messages = [
  new Message(
      contact: contacts[0],
      type: TypeMessage.SEND, message: "Good morning!", date:"10:20"),
  new Message(
      contact: contacts[0],
      type: TypeMessage.SEND, message: "Japan looks amazing!", date:"10:22"),
  new Message(
      contact: contacts[0],
      type: TypeMessage.RECEIVE, message: "Do you know what time is it?", date:"10:23"),
  new Message(
      contact: contacts[0],
      type: TypeMessage.SEND, message: "It's morning in Tokyo?", date:"10:25"),
];