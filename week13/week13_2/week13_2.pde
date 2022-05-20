
void setup() {
  size(400,300);
  textSize(40);
}

int choice=-1;

void draw() {
    background(#DFEA45);
    fill(#456FEA);
    if (choice == 0)
        ellipse(50, 25, 40, 40);
    if (choice == 1)
        ellipse(50, 75, 40, 40);
    if (choice == 2)
        ellipse(50, 125, 40, 40);
    text("choice1", 50, 50);
    text("choice2", 50, 100);
    text("choice3", 50, 150);
}

void mousePressed() {
    choice = int(random(3));
}

void initializeFields() {
    choice = -1;
}
