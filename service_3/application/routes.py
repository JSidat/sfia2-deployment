from application import app
from flask import request, Response
from random import randint

@app.route('/ending', methods = ['GET', 'POST'])
def ending():
    ending = ['Blinders', 'Control', 'Matata', 'Xhakalaka']

    return Response(ending[randint(0, len(ending)-1)], mimetype ='text/plain')
    


