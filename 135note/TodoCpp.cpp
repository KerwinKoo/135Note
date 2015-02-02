#include "TodoCpp.h"
#include <QStandardPaths>
#include <QDebug>
#include <QVariantMap>

TodoCpp::TodoCpp()
{
    /*path: get the main storage path*/
    QString path = QStandardPaths::standardLocations(QStandardPaths::GenericDataLocation).first();
    qDebug()<<path;
    settings = new QSettings(path.append("/todo1-2-3.ini"), QSettings::IniFormat);
}

TodoCpp::~TodoCpp()
{
}

void TodoCpp::saveItems(const QVariantList &list)
{
    settings->beginWriteArray("items");
    for(int i = 0; i<list.size(); ++i)
    {
        settings->setArrayIndex(i);
        if(!list.at(i).toMap().value("text").toString().isEmpty())
        {
            settings->setValue("text", list.at(i).toMap().value("text").toString());
            settings->setValue("pri", list.at(i).toMap().value("pri", 99).toInt());
            settings->setValue("done", list.at(i).toMap().value("done", false).toBool());
        }
    }
    settings->endArray();
    settings->sync();
}

QVariantList TodoCpp::getItems()
{
    QVariantList list;
    int size = settings->beginReadArray("items");
    for(int i=0; i<size; i++)
    {
        settings->setArrayIndex(i);
        QVariantMap map;
        map.insert("text", settings->value("text", "").toString());
        map.insert("pri", settings->value("pri", 99).toInt());
        map.insert("done", settings->value("done", false).toBool());

        if(!map.value("text").toString().isEmpty())
        {
            list.push_back(map);
        }
    }
    settings->endArray();
    return list;
}
