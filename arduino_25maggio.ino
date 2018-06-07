int fotoresistenza;
int led;

void setup()  
{  
 pinMode(A0,INPUT);  
 pinMode(13,OUTPUT);  
 Serial.begin(9600); // Inizializzo la comunicazione seriale  
}  
  
void loop()  
{  
 int val = analogRead(fotoresistenza); // salvo il valore fotoresistenza dentro alla variabile val  
 Serial.println(val, DEC); // Scrivo il valore della fotoresistenza, espresso in numeri decimali  
   
 if(val<800) //se il valore letto dalla fotoresistenza (luminosità) è basso, accendo il led  
 digitalWrite(led,HIGH);  
 else  
 digitalWrite(led,LOW); //altrimenti lo spengo (o lo lascio spento)  
   
}  
