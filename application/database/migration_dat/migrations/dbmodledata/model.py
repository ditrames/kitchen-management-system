from sqlalchemy.orm import declarative_base
from sqlalchemy import Column, Integer, String, Foreign key

Base = declarative_base()

class Items(Model):
    __tablename__ = 'items'
    id = Column(Integer, primary_key=True)
    barcode_id = Column(String, nullable=False)
    item_name = Column(String, nullable=True)
    position = Column(String, nullable=True)
    buy_link = Column(String, nullable=True)  # link to buy the item at
    compleated = Column(Boolean)
    nickname = Column(String)

    def __repr__(self):
        return "<User(name='%s', fullname='%s', nickname='%s')>" % (
            self.name, self.fullname, self.nickname)


class StockTracker(Model):
    __tablename__ = 'stock_tracker'
    id = Column(Integer, primary_key=True)
    amount = Column(Integer, nullable=False)
    item_type = Column(Integer, ForeignKey('items.id'))
    target_stock = Column(Integer, nullable=False)