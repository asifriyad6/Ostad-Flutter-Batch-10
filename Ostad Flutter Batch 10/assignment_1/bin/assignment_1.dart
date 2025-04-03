
void main() {
  Car audiA8 = Car();
  audiA8.setSpeed(130);
  audiA8.move();
}

abstract class Vehical {

  int _speed = 0;
  
  move();
  
  setSpeed(int speed) {
    if(speed >= 0) {
      _speed = speed;
    } else {
      print('Speed Can not be negative value');
    }
  }
  
  int get speed => _speed;

}

class Car extends Vehical {
  @override
  move() {
    print("The car is moving at $speed km/h");
  }
}