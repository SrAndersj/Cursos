#include <LiquidCrystal.h>

int tempC;

int sensorT =A0;


LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {               

Serial.begin(9600);
lcd.begin(16,2);

  
}

void loop() {
  // put your main code here, to run repeatedly:


tempC = analogRead(sensorT);
tempC =tempC*.48828125;
Serial.println(tempC);
lcd.setCursor(0,0);
lcd.print("Temperatura:");
lcd.setCursor(0,1);
lcd.print(tempC);
delay(500);
lcd.clear(); 

}

//pin out lm35 para buscar como estan los pines
