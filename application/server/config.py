import os


def get_url():
    DB_UNAME = os.environ.get('POSTGRES_UNAME')
    DB_PWD = os.environ.get('POSTGRES_PASSWORD')
    return f'postgresql://{DB_UNAME}:{DB_PWD}@backenddb/appdata'


class Config:
    FLASK_DEBUG = True
    SQLALCHEMY_DATABASE_URI = get_url()


class Config_debug(Config):
    FLASK_DEBUG = False


if __name__ == '__main__':
    print(Config.SQLALCHEMY_DATABASE_URI)
