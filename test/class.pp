class a_class {
    notify { 'test Class A': } 
}

class b_class {
    notify { 'test Class B': }
}

class {'a_class':
    require => Class['b_class'],
}

class {'b_class':
}