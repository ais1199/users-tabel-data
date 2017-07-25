#include "widget.h"
#include <QObject>
#include <QListView>
Widget::Widget(QMainWindow *parent)
    : QMainWindow(parent)
{
    ui = new QDeclarativeView;
    ui->setSource(QUrl("../test3/main.qml"));
    setCentralWidget(ui);
    ui->setResizeMode(QDeclarativeView::SizeRootObjectToView);
    QObject::connect()
}

Widget::~Widget()
{
    delete ui;
}
