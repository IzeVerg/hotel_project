import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final TextInputFormatter digitsOnly = FilteringTextInputFormatter.allow(RegExp('[0-9]'));

final PhoneInputFormatter constraintsForNumber = PhoneInputFormatter();

class PhoneInputFormatter extends TextInputFormatter {
  String _formattedPhone = "";

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text.replaceAll(RegExp(r'\D'), '');
    int selectionStart = oldValue.selection.end;

    //проверяем стирает ли пользователь все символы?
    if (oldValue.text == '${newValue.text} ') {
      _formattedPhone = "";
      return TextEditingValue(
          text: _formattedPhone,
          selection: TextSelection(
              baseOffset: _formattedPhone.length,
              extentOffset: _formattedPhone.length,
              affinity: newValue.selection.affinity,
              isDirectional: newValue.selection.isDirectional));
    }

    //проверяем редактирует ли пользователь телефон где то по середине?
    if (selectionStart != _formattedPhone.length) {
      _formattedPhone = _formattingPhone(text);
      //если да, то не перекидываем курсов в самый конец

      return TextEditingValue(
          text: _formattedPhone,
          selection: TextSelection(
              baseOffset: newValue.selection.baseOffset,
              extentOffset: newValue.selection.extentOffset,
              affinity: newValue.selection.affinity,
              isDirectional: newValue.selection.isDirectional));
    }
    _formattedPhone = _formattingPhone(text);

    //если пользователь просто вводит телефон,
    //то переносим курсор в конец форматированной строки
    return TextEditingValue(
        text: _formattedPhone,
        selection: TextSelection(
            baseOffset: _formattedPhone.length,
            extentOffset: _formattedPhone.length,
            affinity: newValue.selection.affinity,
            isDirectional: newValue.selection.isDirectional));
  }

  /// конструктор для того,  чтобы по умолчанию телефон делать
  // PhoneInputFormatter({
  //   String? initialText,
  // }) {
  //   if (initialText != null) {
  //     formatEditUpdate(
  //         TextEditingValue.empty, TextEditingValue(text: initialText));
  //   }
  // }

  ///возвращает чистый телефон
  String getClearPhone() {
    if (_formattedPhone.isEmpty) {
      return '';
    } else {
      return _formattedPhone.replaceAll(RegExp(r'\D'), '');
    }
  }

  ///заполнил ли юзер телефон
  bool isDone() {
    return (_formattedPhone.replaceAll(RegExp(r'\D'), '').length > 10);
  }

  String _formattingPhone(String text) {
    ///регулярка протиB букв. в телефоне только цифры
    text = text.replaceAll(RegExp(r'\D'), '');
    if (text.isNotEmpty) {
      String phone = "";

      ///проверяем российский ли номер
      if (['7', '8', '9'].contains(text[0])) {
        //если пользователь начал с 9, то добавим 7
        if (text[0] == '9') {
          text = "7$text";
        }

        ///Проверяем нужен ли +
        String firstSymbols = (text[0] == '8') ? '8' : '+7';

        ///само форматирование
        phone = "$firstSymbols ";
        if (text.length > 1) {
          phone += '(${text.substring(1, (text.length < 4) ? text.length : 4)}';
        }
        if (text.length >= 5) {
          phone += ') ${text.substring(4, (text.length < 7) ? text.length : 7)}';
        }
        if (text.length >= 8) {
          phone += '-${text.substring(7, (text.length < 9) ? text.length : 9)}';
        }
        if (text.length >= 10) {
          phone += '-${text.substring(9, (text.length < 11) ? text.length : 11)}';
        }
        return phone;
      } else {
        return '+$text';
      }
    }
    return '';
  }
}

const Color colorRegular = Color(0xFFF6F6F9);

Color colorRed = const Color(0xFFEB5757).withOpacity(0.15);

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.onChanged,
    required this.text,
    this.hasError = false,
    this.constraints,
  }) : super(key: key);

  final Function(String value) onChanged;
  final List<TextInputFormatter>? constraints;
  final bool hasError;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      decoration: BoxDecoration(
        color: hasError ? colorRed : colorRegular,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        height: 35,
        child: TextFormField(
          onChanged: onChanged,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          inputFormatters: constraints,
          decoration: InputDecoration(
            labelText: text,
            labelStyle: const TextStyle(
              color: Color(0xFFA9ABB7),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            isDense: true,
            contentPadding: const EdgeInsets.only(top: 0),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            color: Color(0xFF14142B),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
