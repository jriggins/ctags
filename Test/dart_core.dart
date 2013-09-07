library testlib;

const int A_CONST_INT = 3;

typedef ATypeDef(int x, int y);

String funcWithRequiredParams(int x, String y) {
  return "$x $y";
}

String funcWithOptionalParams(int x, [String y=""]) {
  return "$x $y";
}

String funcWithNamedParams(int x, {String name:"x"}) {
  return "$x $name";
}

String funcWithArrow() => 42;

class AClass {
  int _privateMember;
  int publicMember;
  final int finalMember;

  AClass() : finalMember = 0;

  AClass.withArgs(this._privateMember, this.publicMember, this.finalMember);

  factory AClass.factoryCtor() {
    return new AClass();
  }

  methodWithNoReturnType() {
  }

  int methodWithReturnType() {
    return 0;
  }

  int methodWithRequiredParams(int x, int y) {
    return 0;
  }

  int methodWithOptionalParams(int x, [int y=0]) {
    return 0;
  }

  int methodWithNamedParams(int x, {String named:""}) {
    return 0;
  }

  int get property {
    return _privateMember;
  }

  void set property(int val) {
    _privateMember = val;
  }

  int methodWithArrow(int x) => x * 2;

  int get getterWithArrow => _privateMember * 3;

  void set setterWithArrow(int x) => _privateMember = x;
}

class BClass {
  final int x;
  final int y;

  const BClass(this.x, this.y);
}

