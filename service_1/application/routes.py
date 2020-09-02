from flask import render_template, request, redirect, Response
from application import app, db
import requests
from application.models import Teams

@app.route('/', methods = ['GET'])
def home():
    teamData = Teams.query.all()
    response = requests.get('http://service_4:5003/teamname')
    result = response.text
    print(result)
    return render_template('home.html', teamname=teamData, result=result, title='Home Page')
