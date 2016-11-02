package com.mmachado;


public aspect DogAspect {
    public DogAspect() {
        System.out.println("[ASPECT]: Initializing");
    }

    pointcut barkMethod() : call(public void com.mmachado.Dog.bark());

    before() : barkMethod() {
        System.out.println("[ASPECT]: Before bark");
    }

    after() : barkMethod() {
        System.out.println("[ASPECT]: After bark");
    }
}
