#include <Arduino.h>

//Mapeo de pines
#define STBY 9  
#define AIN1  3   
#define AIN2  4 
#define PWMB  5 
#define PWMA  6 
#define BIN1  8 
#define BIN2  7  
#define NUM_SENSORS             6    
#define NUM_SAMPLES_PER_SENSOR  4    
#define EMITTER_PIN             11  
#define LED     13     

//Mapeo de pines Modificados
#define Sensor1 A0
#define Sensor2 A1
#define Sensor3 A2
#define Sensor4 A3
#define Sensor5 A4
#define Sensor6 A5

// Constantes para PID
float KP = 0.01;
float KD = 1.0;
float Ki = 0.006;

// Regulación de la velocidad Máxima
int Velmax = 80;

// Data para intrgal 
int error1=0;
int error2=0;
int error3=0;
int error4=0;
int error5=0;
int error6=0;



unsigned int sensorValues[NUM_SENSORS];

// Función accionamiento motor izquierdo
void Motoriz(int value)
{
  if ( value >= 0 )
  {
    digitalWrite(BIN1,HIGH);
    digitalWrite(BIN2,LOW);
  }
  else
  {
    digitalWrite(BIN1,LOW);
    digitalWrite(BIN2,HIGH);
    value *= -1;
  }
  analogWrite(PWMB,value);
}

// Función accionamiento motor derecho
void Motorde(int value)
{  
  if ( value >= 0 )
  {
    digitalWrite(AIN1,HIGH);
    digitalWrite(AIN2,LOW);
  }
  else
  {
    digitalWrite(AIN1,LOW);
    digitalWrite(AIN2,HIGH);
    value *= -1;
  }    
  analogWrite(PWMA,value);
}



//Accionamiento de motores
void Motor(int left, int righ)
{
  digitalWrite(STBY,HIGH);
  Motoriz(left);
  Motorde(righ);
}



//función de freno
void freno(boolean left, boolean righ, int value)
{
  digitalWrite(STBY,HIGH);
  if ( left )
  {
    digitalWrite(BIN1,HIGH);
    digitalWrite(BIN2,HIGH);
    analogWrite (PWMB, value);
  }
  if ( righ )
  {
    digitalWrite(AIN1,HIGH);
    digitalWrite(AIN2,HIGH);
    analogWrite (PWMA, value);
  }
}

void LecturaSensores(){

int posicion;
int valor1,valor2,valor3,valor4,valor5,valor6;
valor1=analogRead(A0);
valor2=analogRead(A1);
valor3=analogRead(A2);
valor4=analogRead(A3);
valor5=analogRead(A4);
valor6=analogRead(A5);

posicion=(((1*valor1)+(2*valor2)+(3*valor3)+(4*valor4)+(5*valor5)+(6*valor6))/(valor1+valor2+valor3+valor4+valor5+valor6));

return posicion;
}