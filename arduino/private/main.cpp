#include <Arduino.h>
#include <string> 

int TTL_PIN=8; // pull high to output
int SIG_PIN1=3; // maybe using a led to count.using binary number format, can count 32 min using 5 led
int SIG_PIN1=4; 
int SIG_PIN1=5; 
int SIG_PIN1=6;
int SIG_PIN1=7;
int PAUSE = 60000000; //in microsec if i remember correctly. using a min delay

void leddrive(int counter){
    int remainder;
    remainder = counter%2;
    counter /= 2;
    if(remainder){digitalWrite(SIG_PIN1, HIGH)};
    remainder = counter%2;
    counter /= 2;
    if(remainder){digitalWrite(SIG_PIN2, HIGH)};
    remainder = counter%2;
    counter /= 2;
    if(remainder){digitalWrite(SIG_PIN3, HIGH)};
    remainder = counter%2;
    counter /= 2;
    if(remainder){digitalWrite(SIG_PIN4, HIGH)};
    remainder = counter%2;
    counter /= 2;
    if(remainder){digitalWrite(SIG_PIN5, HIGH)};}

void ledshut(){
    digitalWrite(SIG_PIN1, LOW);
    digitalWrite(SIG_PIN2, LOW);
    digitalWrite(SIG_PIN3, LOW);
    digitalWrite(SIG_PIN4, LOW);
    digitalWrite(SIG_PIN5, LOW);}
}

void setup() {
pinMode(TTL_PIN, OUTPUT);
pinMode(SIG_PIN1, OUTPUT);
pinMode(SIG_PIN2, OUTPUT);
pinMode(SIG_PIN3, OUTPUT);
pinMode(SIG_PIN4, OUTPUT);
pinMode(SIG_PIN5, OUTPUT);
delay(200000); //delay for 0.2 sec
int counter=0; //counter for how many injection completed.0-31 for 32 injections

for (int counter=0;counter<32;counter++){
digitalWrite(TTL_PIN, HIGH);
delay(50000); //50 ms ttl. 
digitalWrite(TTL_PIN, LOW);
ledshut();
leddrive(counter);
delay(PAUSE);
}
}
