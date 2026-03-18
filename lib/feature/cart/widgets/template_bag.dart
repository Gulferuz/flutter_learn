import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/feature/cart/bloc/counter_bloc.dart';
import 'package:untitled/feature/cart/bloc/counter_event.dart';
import 'package:untitled/feature/cart/bloc/counter_state.dart';

class TemplateBag extends StatefulWidget {


  const TemplateBag({super.key});

  @override
  State<TemplateBag> createState() => _TemplateBagState();
}

class _TemplateBagState extends State<TemplateBag> {
  List<int> quantities = List.filled(5, 1);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 5; i++) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: White,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.06),
                          blurRadius: 8,
                          spreadRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/image/image_bag.png'),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Pullover',
                                          style: GoogleFonts.metrophobic(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Black,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Color:',
                                                    style:
                                                        GoogleFonts.headlandOne(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Gray,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: ' Black',
                                                    style:
                                                        GoogleFonts.headlandOne(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Black,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 16),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Size:',
                                                    style:
                                                        GoogleFonts.headlandOne(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Gray,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: ' L',
                                                    style:
                                                        GoogleFonts.headlandOne(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Black,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // SizedBox(height: 16,),
                                    PopupMenuButton<String>(
                                      icon: Icon(Icons.more_vert_outlined),
                                      onSelected: (String value) {
                                        print(" $value");
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return [
                                          const PopupMenuItem(
                                            value: 'Add to favorites',
                                            child: Text('Add to favorites'),
                                          ),
                                          const PopupMenuItem(
                                            value: 'Delete from the list',
                                            child: Text('Delete from the list'),
                                          ),
                                        ];
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              16.0,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Gray.withOpacity(0.06),
                                                blurRadius: 8,
                                                spreadRadius: 8,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: IconButton(
                                            onPressed:() {
                                              final currentCount = state.oldProductCount[i] ?? 1;
                                              context.read<CounterBloc>().add(
                                                Decrement(i, currentCount)
                                              );
                                            },
                                             // () => context.read<CounterBloc>().add(Decrement(i ),);
                                            icon: Icon(
                                              Icons.remove,
                                              color: Gray,
                                            ),
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Text('${state.oldProductCount[i] ?? 0}'),
                                        SizedBox(width: 12),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                            color: White,
                                            borderRadius: BorderRadius.circular(
                                              16.0,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Gray.withOpacity(0.06),
                                                blurRadius: 8,
                                                spreadRadius: 8,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: IconButton(
                                            onPressed:() {
                                              final currentCount = state.oldProductCount[i] ?? 1;
                                              context.read<CounterBloc>().add(
                                                  Increment(i, currentCount),);
                                            },
                                            // () => context.read<CounterBloc>().add(Increment(0,1)),
                                            icon: Icon(
                                              Icons.add,
                                              color: Gray,
                                            ),
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                      child: Text(
                                        textAlign: TextAlign.right,
                                        '12\$',
                                        style: GoogleFonts.metrophobic(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
