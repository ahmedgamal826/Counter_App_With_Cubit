part of 'counter_bloc.dart'; // say counter_event file is part of counter_bloc file

abstract class CounterEvents {} // parent class

class CounterIncrementEvents extends CounterEvents {} // child class

class CounterDecrementEvents extends CounterEvents {} // child class
