#ifndef WIDGET_H
#define WIDGET_H

#include <QMainWindow>
#include <QtDeclarative/QDeclarativeView>
#include <QGraphicsObject>
#include <QtGui>
#include <QDeclarativeContext>

namespace Ui {
    class Widget;
}

class Widget : public QMainWindow
{
    Q_OBJECT

public:
    explicit Widget(QMainWindow *parent = 0);
    ~Widget();
private:
        QDeclarativeView *ui;
};

#endif // WIDGET_H
