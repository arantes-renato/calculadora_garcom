import 'package:calculadora_garcom/pages/total_de_cartao_page.dart';
import 'package:calculadora_garcom/shared/widgets/texto.dart';
import 'package:calculadora_garcom/shared/widgets/variaveis.dart';
import 'package:flutter/material.dart';

class TotalDeVendaPage extends StatefulWidget {
  const TotalDeVendaPage({super.key});

  @override
  State<TotalDeVendaPage> createState() => _TotalDeVendaPageState();
}

class _TotalDeVendaPageState extends State<TotalDeVendaPage> {
  int distancia = 0;
  String numeroDisplay = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Align(
                heightFactor: 1,
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Total de Venda',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  heightFactor: 0.5,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'R\$ $numeroDisplay',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white30,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '7';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '7', cor: null))),
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '8';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '8', cor: null))),
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '9';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '9', cor: null))),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '4';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '4', cor: null))),
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '5';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '5', cor: null))),
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '6';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '6', cor: null))),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '1';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '1', cor: null))),
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '2';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '2', cor: null))),
                                Expanded(
                                    child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          setState(() {
                                            numeroDisplay =
                                                '$numeroDisplay' '3';
                                          });
                                        },
                                        child: const TextLabel(
                                            texto: '3', cor: null))),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: InkWell(
                                      borderRadius: BorderRadius.circular(7),
                                      onTap: () {
                                        setState(() {
                                          numeroDisplay = '$numeroDisplay' '0';
                                        });
                                      },
                                      child: const TextLabel(
                                          texto: '0', cor: null))),
                              Expanded(
                                  child: InkWell(
                                      borderRadius: BorderRadius.circular(7),
                                      onTap: () {
                                        setState(() {
                                          if (!numeroDisplay.contains(',')) {
                                            numeroDisplay = '$numeroDisplay,';
                                          }
                                        });
                                      },
                                      child: const TextLabel(
                                          texto: ',', cor: null)))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {
                                    setState(() {
                                      if (numeroDisplay.isNotEmpty) {
                                        numeroDisplay = '';
                                      }
                                    });
                                  },
                                  child: const TextLabel(
                                      texto: 'c', cor: Colors.blueGrey))),
                          const SizedBox(
                            height: 3,
                          ),
                          Expanded(
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {
                                    setState(() {
                                      if (numeroDisplay.isNotEmpty) {
                                        numeroDisplay = numeroDisplay.substring(
                                            0, numeroDisplay.length - 1);
                                      }
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      if (numeroDisplay.isNotEmpty) {
                                        numeroDisplay = '';
                                      }
                                    });
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: const Icon(
                                          Icons.backspace_outlined)))),
                          const SizedBox(
                            height: 3,
                          ),
                          Expanded(
                              flex: 2,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {
                                    setState(() {
                                      numeroDisplay =
                                          numeroDisplay.replaceAll(',', '.');
                                      double valor =
                                          double.tryParse(numeroDisplay) ?? 0.0;
                                      Variaveis.totalVenda =
                                          valor; // Adicione ao total de venda
                                      numeroDisplay = '';
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const TotalDeCartaoPage(),
                                          ));
                                    });
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: const Icon(Icons.check_outlined))))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
