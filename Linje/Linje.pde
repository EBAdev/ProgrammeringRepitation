int a = int(random(1, 10));
int x = int(random(1, 10));
int b = int(random(1, 10));
int y = int(random(1, 100));

void setup() {
  int fx = a*x+b;
  if (fx>y) {
    print("UNDER");
  } else if (fx<y) {
    print("OVER");
  } else if (fx==y) {
    print("LINJE");
  }
}
