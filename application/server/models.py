
from __init__ import db


class Items(db.Modle):
    __tablename__ = 'items'
    id = db.Column(db.Integer, primary_key=True)
    barcode_id = db.Column(db.String, nullable=False)
    item_name = db.Column(db.String, nullable=True)
    position = db.Column(db.String, nullable=True)
    buy_link = db.Column(db.String, nullable=True)  # link to buy the item at
    compleated = db.Column(db.Boolean)
    nickname = db.Column(db.String)


class StockTracker(db.Modle):
    __tablename__ = 'stock_tracker'
    id = db.Column(db.Integer, primary_key=True)
    amount = db.Column(db.Integer, nullable=False)
    item_type = db.Column(db.Integer, db.ForeignKey('items.id'))
    target_stock = db.Column(db.Integer, nullable=False)
