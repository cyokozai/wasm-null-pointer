struct Vector3 {
  float x;
  float y;
  float z;
};

float get_z() {
  volatile struct Vector3 v = {1.0f, 2.0f, 3.0f};
  return v.z;
}
