// importing packages
const express = require('express');

const admin = require('firebase-admin');
const bcrypt = require('bcrypt');
const path = require('path');

//firebase admin setups
let serviceAccount = require("./ecommercewebapp-9388b-firebase-adminsdk-oi09z-e92b4c3fa9.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

let db = admin.firestore();

//declare static path
let staticPath = path.join(__dirname, "public");

//initializing express.js

const app = express();

//middlewares
app.use(express.static(staticPath));
app.use(express.json());

//routes for routes
//home routes
app.get("/", (req, res) =>{
    res.sendFile(path.join(staticPath,"index.html"));
})

//signup routes
app.get('/signup', (req, res) =>{
    res.sendFile(path.join(staticPath,"signup.html"));
})

app.post('/signup', (req, res) =>{
    let{uname, email, password, phone}= req.body;

    //form validations
    if(uname.length<3){
        return res.json({'alert': 'name must be atleast 3 letters long'});
    }    
    else if(!email.value.length){
        return res.json({'alert': 'Enter your email'});
    }
    else if(password.value.length < 8){
        return res.json({'alert':'password must be 8 letters long'});
    }
    else if(!phone.value.length){
        return res.json({'alert':'Enter your phone number'});
    }
    else if(phone.value.length!=10){
        return res.json({'alert':'phone number must be 10 digits long'});
    }

        //store user in the database

    db.collection("users").doc(email).get()
    .then(user=>{
        if(user.exists){
            return res.join({'alert': 'email already exists'});
        }
        else{
            //encrypt passowrd before storing
            bcrypt.genSalt(10, (err, salt) =>{
                bcrypt.hash(password, salt, (err, hash) =>{
                    req.body.password = hash;
                    db.collection("users").doc(email).set(req.body)
                    .then(data=>{
                        res.json({
                            name: req.body.name,
                            email: req.body.email
                        })
                    })
                })
            })
        }
    })
})

//login route
app.get('/login', (req, res) =>{
    res.sendFile(path.join(staticPath, "login.html"));
})

app.post('/login', (req, res)=>{
    let{email, password} = req.body;

    if(!email.length ||!password.length){
        return res.json({'alert': 'fill all the inputs'})
    }

    db.collection('users').doc(email).get()
    .then(user=>{
        if(!user.exists){
            return res.json({'alert':'login email does not exist'})
        }else{
            bcrypt.compare(password, user.data().password, (err, result) =>{
                if(result){
                    let data = user.data();
                    return res.json({
                        name: data.name,
                        email: data.email, 
                    
                    })
                }else{
                    return res.json({'alert': 'password does not match'})
                }
            })
        }
    })
})

//404 routes for
app.get('/404',(req, res) =>{
    res.sendFile(path.join(staticPath,"404.html"));
})
app.use((req, res)=>{
    res.redirect('/404');
})



app.listen(3000, () =>{
    console.log('listening on port 3000.......');
})