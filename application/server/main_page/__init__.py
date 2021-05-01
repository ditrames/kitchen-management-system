from flask import Blueprint, render_template
from models import Items

main_app = Blueprint(
    'main_page',
    __name__,
    template_folder='templates',
    static_folder='static'
)


@main_app.route('/')
def main():
    return render_template('test.html')


@main_app.route('/unknownitems')
def unknown_items():
    tog = Items.query.all()
    return render_template('test.html', barcodes=tog)
