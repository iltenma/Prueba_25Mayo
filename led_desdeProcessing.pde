import cc.arduino.*;
import org.firmata.*;

import  processing.serial.*; //  importamos  la  librería  processing Serial
import  cc.arduino.*;

Arduino arduino;
int ledPin = 13;

void setup () {
arduino  =  new  Arduino(this,  Arduino.list()[0],  57600);
arduino.pinMode(ledPin,  Arduino.OUTPUT); 
}

void  draw()  {  
arduino.digitalWrite(ledPin,  Arduino.HIGH); //  escribimos  en  arduino
delay(1000); //  solo  se  puede  utilizar  en  processing 1.5.  Si  da  problemas  en  el  Processing 2.1  crear  un temporizador
arduino.digitalWrite(ledPin,  Arduino.LOW);  
delay(1000); //  solo  se  puede  utilizar  en  processing 1.5.  Si  da  problemas  en  el  Processing 2.1  crear  un temporizador
}
