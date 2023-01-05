import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickersDialogPage extends StatefulWidget {
  const PickersDialogPage({Key? key}) : super(key: key);

  @override
  State<PickersDialogPage> createState() => _PickersDialogPageState();
}

class _PickersDialogPageState extends State<PickersDialogPage> {
  DateTime date = DateTime.now();
  DateTime? pickerDate;

  TimeOfDay time = TimeOfDay.now();
  TimeOfDay? pickerTime;

  Future<void> abrirPickerFecha(context) async {
    pickerDate = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2023),
        lastDate: DateTime(2024)
    );
    if(pickerDate != null && pickerDate != date) {
      setState(() {
        date = pickerDate!;
        print(date);
      });
    }
  }

  Future<void> abrirPickerHora(context) async {
    pickerTime = await showTimePicker(
        context: context,
        initialTime: time
    );
    setState(() {
      time = pickerTime!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pickers & Dialogs"),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text("Seleccione una fecha:"),
                IconButton(
                    onPressed: (){
                      abrirPickerFecha(context);
                    },
                    icon: Icon(Icons.calendar_month)
                )
              ],
            ),
            Text("${date.day}/${date.month}/${date.year}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text("Seleccione una hora:"),
                IconButton(
                    onPressed: (){
                      abrirPickerHora(context);
                    },
                    icon: Icon(Icons.watch_later)
                )
              ],
            ),
            Text("${time.hour}:${time.minute}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){
                  openDialogMaterial();
                },
                child: Text("Abrir dialogo Material")
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){
                  openDialogCupertino();
                },
                child: Text("Abrir dialogo Cupertino")
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return  CustomDialogBox(
                          title: "Dialogo Personalizado",
                          descriptions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
                          text: "Aceptar",
                        );
                      }
                  );
                },
                child: Text("Abrir dialogo personalizado")
            )
          ],
        ),
      ),
    );
  }

  void openDialogMaterial() {
    var alertDialog = AlertDialog(
      title: const Text("Confirmación"),
      content: const Text("¿Desea realizar la operación?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancelar"),
            style: TextButton.styleFrom(
                primary: Colors.redAccent
            ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Aceptar"),
            style: TextButton.styleFrom(
              primary: Colors.green
            ),
        ),
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext){
          return alertDialog;
        }
    );
  }

  void openDialogCupertino() {
    var alertDialog = CupertinoAlertDialog(
      title: const Text("Confirmación"),
      content: const Text("¿Desea realizar la operación?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancelar"),
          style: TextButton.styleFrom(
              primary: Colors.redAccent
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Aceptar"),
          style: TextButton.styleFrom(
              primary: Colors.green
          ),
        ),
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext){
          return alertDialog;
        }
    );
  }

}





class CustomDialogBox extends StatefulWidget {
  final String? title, descriptions, text;
  final Image? img;

  const CustomDialogBox({Key? key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: 20, top: 65, right: 20, bottom: 20),
          margin: const EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 3),
                    blurRadius: 5
                ),
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.title!, style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600),),
              const SizedBox(height: 15,),
              Text(widget.descriptions!, style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,),
              const SizedBox(height: 22,),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text!, style: const TextStyle(fontSize: 18),)
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(45)),
                child: Image.asset("images/profile.png")
            ),
          ),
        ),
      ],
    );
  }
}
