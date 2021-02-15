### New User Mutation :

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

### Login User Mutation :

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