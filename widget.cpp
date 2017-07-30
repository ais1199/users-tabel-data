#include "widget.h"
#include <QObject>
#include <QListView>
#include <QFile>
#include <QString>

Widget::Widget(QMainWindow *parent)
    : QMainWindow(parent)
{
    ui = new QDeclarativeView;
    ui->setSource(QUrl("../test3/main.qml"));
    setCentralWidget(ui);
    ui->setResizeMode(QDeclarativeView::SizeRootObjectToView);
    QObject *Root = ui->rootObject();

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
        while(!f.atEnd())
        {
            f.readLine(buf,128);
            dop=QString(buf);
            dop=dop.section("\r\n",0,0);
            //пропускаем пустые строки
            //ignore empty strings
            if(dop.length()==0)continue;
            msg1=QVariant(dop.section("; ",0,0));
            msg2=QVariant(dop.section("; ",1,1));
            dop2=dop.section("; ",2,2);
            msg3=QVariant(dop2.section(";",0,0));
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

Widget::~Widget()
{
    delete ui;
}
