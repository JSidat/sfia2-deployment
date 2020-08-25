from application import db

class Teams(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    teamname = db.Column(db.String(100), nullable=False)

    def __repr__(self):
        return ''.join([
            'ID: ', str(self.id), '\r\n',
            'Team: ', str(self.teamname), '\r\n'
        ])

    

