/* Progect:
*  We have one file with users' data, it must be presented, as not editable table.
*  \author ais
*  \version 2.0
*  \date 25.07.2017
*  \date Last Change: 31.07.2017
*/
#include "widget.h"
#include <QObject>
#include <QListView>
#include <QFile>
#include <QString>
//конструктор
//constructor
Widget::Widget(QMainWindow *parent)
    : QMainWindow(parent)
{
    ui = new QDeclarativeView;
    //устанавливаем источник для ui
    //setting Source for ui
    ui->setSource(QUrl("../test3/main.qml"));
    //устанавливаем ui в качестве основного виджета
    //set ui as main Widget
    setCentralWidget(ui);
    ui->setResizeMode(QDeclarativeView::SizeRootObjectToView);

    QVariant msg1;
    QVariant msg2;
    QVariant msg3;
    QFile f(QString("../test3/file.txt"));
    char buf[128];
    //открываем файл на чтение
    //open to read
    if(f.open(QIODevice::ReadOnly))
    {
        QString dop;
        QString dop2;
        //читаем из фаила
        //start file reading
        while(!f.atEnd())
        {
            f.readLine(buf,128);
            dop=QString(buf);
            dop=dop.section("\r\n",0,0);
            //пропускаем пустые строки
            //ignore empty strings
            if(dop.length()==0)continue;
            //распределяем данные по столбцам
            //sorting data in colomns
            msg1=QVariant(dop.section("; ",0,0));
            msg2=QVariant(dop.section("; ",1,1));
            dop2=dop.section("; ",2,2);
            msg3=QVariant(dop2.section(";",0,0));
            //отправляем данные в ListModel в таблицу, используя qml функцию
            // sending data to tabel, invoked QML method
            QMetaObject::invokeMethod(Root, "addElement",
                    Q_ARG(QVariant, msg1),Q_ARG(QVariant, msg2),
                    Q_ARG(QVariant, msg3));
        }
    }
    else
    {
        //в случае неудачного открытия файла
        //file opening error case
        f.close();
        printf("file opening error\n");
        exit(666) ;
    }
    f.close();
}
//диструктор
//destructor
Widget::~Widget()
{
    delete ui;
}
