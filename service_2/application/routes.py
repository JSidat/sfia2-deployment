from application import app
from flask import request, Response
from random import randint

@app.route('/beginning', methods = ['GET', 'POST'])
def beginning():
    beginning = ['Pique', 'Boom', 'Bacuna', 'Boom']
    
    return Response(beginning[randint(0, len(beginning)-1)], mimetype='text/plain')

