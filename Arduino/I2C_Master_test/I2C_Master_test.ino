#include <Wire.h>
#include<Bridge.h>
#define SLAVE_ADDRESS 0x12
#define SERIAL_BAUD 9600
#define DATA_SIZE 12

void setup()
{
  Wire.begin();
  Bridge.begin();
  Console.begin();
}

void loop()
{
  if (Console.available()) {
    Wire.requestFrom(SLAVE_ADDRESS, DATA_SIZE);
    Wire.beginTransmission(SLAVE_ADDRESS);
    if (Wire.available()) {
      Console.println("I2C Master.04 started");
      Console.print("Data returned: ");
      while(Wire.available()) Console.print((char) Wire.read());
      Console.println();
      Console.println();
    }
    Wire.endTransmission();
    Console.read();  // Clear the serial buffer, in this example, just request data from slave
  }
}
