#include <SPI.h>
#include <Keyboard.h>
#include <Bridge.h>
#include <BridgeClient.h>
#include <BridgeServer.h>
#include <BridgeSSLClient.h>
#include <Console.h>
#include <HttpClient.h>
#include <Mailbox.h>
#include <Process.h>
#include <YunClient.h>
#include <YunServer.h>
#include <SoftwareSerial.h>
#include <Keypad.h>   // 引用 Keypad library
// Serial1 on pins 0 (RX) and 1 (TX); Serial is microUSB; USB is power
//NO按下通電；NC按下不通電

const byte ROWS = 2; //four rows    // 2x2 Keypad
const byte COLS = 2; //three columns
char keys[ROWS][COLS] = {     // 定義 Keypad 的按鍵
  {'5','6'},
  {'7','8'}
};

// 定義 Keypad 連到 Arduino 的接腳
byte rowPins[ROWS] = {A0, A1};  // 連到 Keypad 的 2 個 Rows: Row0, Row1
byte colPins[COLS] = {13, 12};  // 連到 Keypad 的 2 個 Columns: Column0, Column1
 
Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );   // 建立 Keypad 物件

IPAddress server(192,168,1,87); //設定wifi的IP
YunClient client;
char buffer[256];   //設定字串長度
int temp;

void setup()
{
  Bridge.begin();
  Console.begin();
}

void loop()
{
  delay(2500);
  Console.println("Connecting...");

  if (client.connect(server, 80))   //連上Server
  {
    Console.println("Connected\n");
    delay(2500);
    
    char key = keypad.getKey();   // 讀取 Keypad 的輸入
    if (key){
      Console.print("Now Send Value ");
      Console.println(key);
      Console.println();
      sprintf(buffer, "HEAD /SmartShelf/row.php?temp=%d HTTP/1.1", key);
      client.println(buffer);   //將字串傳到網頁端
      client.println("Host: localhost");
      client.println("Connection: Close");
      client.println();
    }

    char key2 = Serial1.read();  //等到軟體串列埠RX收到Mega傳來的字元
    if (key2>0){
      Console.print("Now Send Value ");
      Console.println(key2);
      Console.println();
      sprintf(buffer, "HEAD /SmartShelf/row.php?temp=%d HTTP/1.1", key2);
      client.println(buffer);   //將字串傳到網頁端
      client.println("Host: localhost");
      client.println("Connection: Close");
      client.println();
    }
  }
  
  else
  {
  Console.println("Connection failed");
  }
  
}

/*#include <SPI.h>
#include <Bridge.h>
#include<YunClient.h>

char server[] = "192.168.1.87";
YunClient client;

void setup() {
  Bridge.begin();
  Console.begin();
  while (!Console);
    Console.println("Ready\n");
}

void loop() {  
  if (client.connect(server, 80)) {
    Console.println("Connected\n");
        client.print("GET/ index2.php?temp=123"); // This
        client.println(" HTTP/1.1"); // Part of the GET request
        client.println("Host: http://192.168.1.87/SmartShelf/index2.php"); 
        client.println("Connection: close"); // Part of the GET request telling the server that we are over transmitting the message
        client.println(); // Empty line
        client.println(); // Empty line
        client.stop();    // Closing connection to server
  }
  else {
 //  If Arduino can't connect to the server (your computer or web page)
    Console.println("--> Connection failed\n");
  }
    delay(3000);
 }

#include <Bridge.h>
#include <Console.h>
#include <YunServer.h>
#include <YunClient.h>

IPAddress server(127,0,0,1);

void setup() {
  Bridge.begin(); // 啟動Bridge
  //server.listenOnLocalhost(); // 設定讓伺服器聆聽本地端IP位址的連線
  //server.begin(); // 開始
  Console.begin();
    while (!Console);
    Console.println("Ready\n");
}

void loop() {
  
  //YunClient client = server.accept(); // 有連線進來了
  YunClient client;
  if (client.connect(server, 80)) {     // 有連到Server

      Console.println("Connected");
      Console.println("Sending request");
      client.print("GET/ index2.php?temp=");
      Console.print("GET/ index2.php?temp=");
      client.print("123");
      Console.print("456");
      client.println(" HTTP/1.1");
      Console.println(" HTTP/1.1");
      client.println("Host: http://127.0.0.1/SmartShelf/index2.php");
      client.println("Connection: close");
      client.println();
      Console.println("Done!");
      Console.println();
      client.stop();

  }
  else {
  Console.println("Connection failed");
  }

  if (client.available()) {
    char c = client.read();
    Console.print(c);
  }
  
  delay(3000);

}*/
