---
title: interview prep
thumbnail: ""
url: "interview-prep"
...

# OOP 

* basic class 

```cpp 
class Person {
  public:
    string name;
    int id;
    Person(string name, int id) {
      this -> name = name;
      this -> id = id;
    }

    void getDetails() {
      cout << name << " " << id << "\n";
    }

    void setName(string name) {
      this -> name = name;
    }

    ~Person() {
      cout << "cleaning the object" << "\n";
    }
};
```

* inheritance 

```cpp

```



