int echoPin = 5;
int trigPin = 6;
int leftTrig = 2;
int rightTrig = 3;
int verticalSteps = 51;
int currentStep = 0;
int val = 0;

// defines variables
long duration; // variable for the duration of sound wave travel
int distance; // variable for the distance measurement
int grayScaleValue;
bool isDone = false;
bool firstFallingEdge = true;
int numbersPrinted = 0;
volatile bool shouldDelay = false;
volatile bool beginImage = false;

void setup() {
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an OUTPUT
  pinMode(echoPin, INPUT); // Sets the echoPin as an INPUT
  pinMode(leftTrig, INPUT);
  pinMode(rightTrig, INPUT);
  Serial.begin(9600); // // Serial Communication is starting with 9600 of baudrate speed
}

void loop() {
  if(currentStep <= verticalSteps && digitalRead(leftTrig) == digitalRead(rightTrig)){
    firstFallingEdge = true;
    // Clears the trigPin condition
    digitalWrite(trigPin, LOW);
    delay(15);
    // Sets the trigPin HIGH (ACTIVE)
    digitalWrite(trigPin, HIGH);
    delay(2);
    digitalWrite(trigPin, LOW);
    // Reads the echoPin, returns the sound wave travel time in microseconds
    duration = pulseIn(echoPin, HIGH);
    // Calculating the distance
    distance = duration * 0.034 / 2; // Speed of sound wave divided by 2 (there and back)
    grayScaleValue = map(distance, 2, 18, 0, 255);
    if( distance > 18) {
      grayScaleValue = 255;
    } else if( distance < 2 ) {
      grayScaleValue = 0;
    }
    Serial.print(grayScaleValue);
    Serial.print(" ");
//    numbersPrinted++;
  } else if (digitalRead(rightTrig) == LOW || digitalRead(leftTrig == LOW)) {
    if (firstFallingEdge) {
//      Serial.print(numbersPrinted);
      currentStep++;
//      numbersPrinted = 0;
      firstFallingEdge = false;
      Serial.println();
    }
  }
}


//int echoPin = 5;
//int trigPin = 6;
//int leftTrig = 2;
//int rightTrig = 3;
//int verticalSteps = 51;
//int currentStep = 0;
//int val = 0;
//
//// defines variables
//long duration; // variable for the duration of sound wave travel
//int distance; // variable for the distance measurement
//int grayScaleValue;
//bool isDone = false;
//bool firstFallingEdge = true;
//int numbersPrinted = 0;
//volatile bool shouldDelay = false;
//volatile bool beginImage = false;
//
//void setup() {
//  pinMode(trigPin, OUTPUT); // Sets the trigPin as an OUTPUT
//  pinMode(echoPin, INPUT); // Sets the echoPin as an INPUT
//  pinMode(leftTrig, INPUT);
//  pinMode(rightTrig, INPUT);
//  Serial.begin(9600); // // Serial Communication is starting with 9600 of baudrate speed
//}
//
//void loop() {
//  if(currentStep <= verticalSteps && digitalRead(leftTrig) == digitalRead(rightTrig)){
//    firstFallingEdge = true;
//    // Clears the trigPin condition
//    digitalWrite(trigPin, LOW);
//    delay(5);
//    // Sets the trigPin HIGH (ACTIVE)
//    digitalWrite(trigPin, HIGH);
//    delay(2);
//    digitalWrite(trigPin, LOW);
//    // Reads the echoPin, returns the sound wave travel time in microseconds
//    duration = pulseIn(echoPin, HIGH);
//    // Calculating the distance
//    distance = duration * 0.034 / 2; // Speed of sound wave divided by 2 (there and back)
//    grayScaleValue = map(distance, 2, 18, 0, 255);
//    if( distance > 18) {
//      grayScaleValue = 255;
//    } else if( distance < 2 ) {
//      grayScaleValue = 0;
//    }
//    Serial.print(grayScaleValue);
//    Serial.print(" ");
//    //numbersPrinted++;
//  } else if (digitalRead(rightTrig) == LOW || digitalRead(leftTrig == LOW)) {
//    if (firstFallingEdge) {
//      //Serial.print(numbersPrinted);
//      currentStep++;
//      //numbersPrinted = 0;
//      firstFallingEdge = false;
//      Serial.println();
//    }
//  }
//}
