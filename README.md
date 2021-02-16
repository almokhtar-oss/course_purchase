# Queries

#### get all users

```query{
  users{
    id,
    email
  }
}
```

#### get all courses

```query{
  courses{
    id,
    title,
    price
  }
}
```

#### get course by id

```query{
  course(id: 1){
    id
    title
    price
  }
}
```

#### get user by id

```query{
  user(id: 1){
    id
    email
  }
}
```

# Mutations 

#### New User Mutation :

```mutation{
  createUser(
    name: "almokhtar",
    authProvider:{
    credentials: {
      email: "almokhtar@example.com",
      password: "pass"
    }
    }
  ){
    id
    email
  }
}
```

#### Login User Mutation :

```mutation{
  signinUser(
    credentials:{
      email: "almokhtar@example.com",
      password: "pass"
    }
  ){
    token
    user{
      id
      name
    }
  }
}
```

#### new course 

```mutation{
  createCourse(
    title: "new book 12", 
    price: 12.12)
  {
    title,
    price
  }
}
```

#### update course 

```mutation {
  updateCourse(
    id: 2,
    title: "book updated we"
    price: 12.2123
  ){
    id
    title
    price
  }
}
```

#### destroy course

```mutation{
  destroyCourse(id: 5){
    id,
    title
  }
}
```






