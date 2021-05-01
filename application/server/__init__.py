from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)

db = SQLAlchemy()

production = os.environ.get('FLASK_DEBUG')


def create_app():
    app = Flask(__name__, instance_relative_config=False)

    from main_page import main_app

    app.register_blueprint(main_app)
    print(app.url_map)
    if production:
        app.config.from_object('config.Config')
    else:
        app.config.from_object('config.Config_debug')

    db.init_app(app)

    with app.app_context():
        return app
