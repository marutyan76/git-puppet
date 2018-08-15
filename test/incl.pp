class a_class {
    notify { 'test Class A': } 
}

class b_class {
    notify { 'test Class B': }
}

class c_class {
    notify { 'test Class C': }
}

include a_class
include b_class
include c_class
Class["c_class"] -> Class["b_class"]