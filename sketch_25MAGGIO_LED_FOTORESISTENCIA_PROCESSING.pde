import cc.arduino.*;
import org.firmata.*;
import  processing.serial.*; 
import  cc.arduino.*;

Arduino  arduino;
int  ledPin  =  13; //  declaramos  el  pin
int fotoR = 0; // fotoresistencia

void  setup()  {  
arduino  =  new  Arduino(this,  Arduino.list()[0],  57600);
arduino.pinMode(ledPin,  Arduino.OUTPUT);
}  

void  draw()  {  
arduino.digitalWrite(ledPin,  Arduino.HIGH);
delay(1000);
arduino.digitalWrite(ledPin,  Arduino.LOW);  
delay(1000);
}