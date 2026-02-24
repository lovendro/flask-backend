# import flask

from flask import *

# initialize our app

app=Flask(__name__)

# creating routes

@app.route("/api/home/")

# define function

def home():
    return jsonify({"message":"Welcome to home APi"})




@app.route("/api/products")
def products():
    return jsonify ({"message":"Welcome to products APi"})


# end point to calculate two numbers

@app.route("/api/calc",methods=["POST"])
def calc():
    num1=request.form["num1"]
    num2=request.form["num2"]
    sum=int(num1)+int(num2)
    return jsonify ({"The sum is":sum})


# calculating simple interset
@app.route("/api/simpleinterest",methods=["POST"])
def simpleinterest():
    rate=request.form["rate"]
    principle=request.form["principle"]
    time=request.form["time"]
    simpleinterest=int(rate)*int(principle)*int(time)/100
    return jsonify({"The simple interest is":simpleinterest})





































































# running the app

app.run(debug=True)