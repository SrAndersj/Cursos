
int ledBlank=3;
int potPin=A0;
int potValue=0;

void setup() {
pinMode(ledBlank,OUTPUT);
Serial.begin(9600);  //usa los pines o y/o 1 tx rx  , aqui estamos inicializando el puerto serial
//9600 es la frecuencia en value

  
}

void loop() {
potValue=analogRead(potPin);
Serial.println(potValue);


digitalWrite(ledBlank,HIGH);
delay(potValue);
 

digitalWrite(ledBlank,LOW);
delay(potValue);


}
