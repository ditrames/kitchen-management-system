
class Items(db.Model):
    __tablename__ = 'items'
    id = db.Column(db.Integer, primary_key=True)
    barcode_id = db.Column(db.String, nullable=False)
    item_name = db.Column(db.String, nullable=True)
    position = db.Column(db.String, nullable=True)
    buy_link = db.Column(db.String, nullable=True)  # link to buy the item at
    compleated = db.Column(db.Boolean)
    nickname = db.Column(db.String)

    def __repr__(self):
        return "<User(name='%s', fullname='%s', nickname='%s')>" % (
            self.name, self.fullname, self.nickname)


class CurrentStock(db.Model):
    __tablename__ = 'current_stock'
    id = db.Column(db.Integer, primary_key=True)
    amount = db.Column(db.Integer, nullable=False)
    item_type = db.Column(db.Integer, db.ForeignKey('items.id'))


class TargetStock(db.Model):
    __tablename__ = 'target_stock'
    id = db.Column(db.Integer, primary_key=True)
    amount = db.Column(db.Integer, nullable=False)
    item_type = db.Column(db.Integer, db.ForeignKey('items.id'))
