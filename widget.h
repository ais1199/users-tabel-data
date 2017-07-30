/* Progect:
*  We have one file with users' data, it must be presented, as not editable table.
*  \author ais
*  \version 2.0
*  \date 25.07.2017
*  \date Last Change: 31.07.2017
*/
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
    //constructor
    explicit Widget(QMainWindow *parent = 0);//конструктор
    //destructor
    ~Widget();//диструктор
private:
    //ui для того чтобы записать в него интерфейс из qml
    //ui to use qml interface
        QDeclarativeView *ui;
};

#endif // WIDGET_H
