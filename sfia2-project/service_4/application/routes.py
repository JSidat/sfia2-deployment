from application import app, db
from flask import render_template, request, redirect, Response
from application.models import Teams
from random import randint
import requests


@app.route('/teamname', methods = ['GET', 'POST'])
def teamname():
    beginning =  requests.get('http://service_2:5001/beginning')
    ending = requests.get('http://service_3:5002/ending')
    response = beginning.text + ' ' + ending.text  
    
    

    addstatement=Teams(teamname=response)
    db.session.add(addstatement)
    db.session.commit() 

    return response
    


      
    
    
    
    
    
    