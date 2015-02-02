#ifndef TODOCPP_H
#define TODOCPP_H

#include <QObject>
#include <QSettings>
#include <QVariantList>

class TodoCpp: public QObject
{
    Q_OBJECT
public:
    explicit TodoCpp();
    ~TodoCpp();

signals:

public slots:
    void saveItems(const QVariantList &list);
    QVariantList getItems();

private:
    QSettings* settings;
};

#endif // TODOCPP_H
