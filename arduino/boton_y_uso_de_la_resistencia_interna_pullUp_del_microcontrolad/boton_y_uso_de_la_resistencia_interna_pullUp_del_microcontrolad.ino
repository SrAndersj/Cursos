
const int led1=13;//este pin tiene un led interno en el arduino
const int boton1=12;

void setup() {
 
  pinMode(boton1,INPUT_PULLUP);
  pinMode(led1 ,HIGH);
  

}

void loop() {

   if(digitalRead( boton1)== LOW)
       digitalWrite(led1,HIGH);
  
   else
        digitalWrite(led1,LOW); 
  

 
}
