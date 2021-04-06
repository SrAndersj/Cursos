//int ledBlank1=3; // aqui asigno el numero de pin
const byte ledBlank1=3; //asi tambien se puede declarar

void setup() {

 pinMode(ledBlank1,OUTPUT);
}

void loop() {
  
digitalWrite(ledBlank1,HIGH);
delay(100);
digitalWrite(ledBlank1,LOW);
delay(1000);


}
