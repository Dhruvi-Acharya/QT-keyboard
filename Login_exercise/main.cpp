#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QObject>
#include <QDebug>

class MyDatabase : public QObject {
   Q_OBJECT

public:
    explicit MyDatabase (QObject* parent = 0) : QObject(parent) { }

    Q_INVOKABLE QString search(QString mTextId,QString mTextPwd) {

        QSqlQuery query;
        query.prepare("SELECT userid FROM people WHERE userid = ? and password = ?");
        // query.addBindValue(mInputText.toInt());
        query.addBindValue(QVariant(mTextId));
        query.addBindValue(QVariant(mTextPwd));

        if(!query.exec()){
            qDebug() << "query not executed";
            qWarning() << "MainWindow::OnSearchClicked - ERROR: " << query.lastError().text();
}
        if(query.first())
            return QString(query.value(0).toString());
        else
            return QString("person not found");
    }
};

// We want to avoid defining the class above in a my_database.h file. That would let the MOC
// pre-processor find what it needs automatically, but we'd have another file in this demo.
// To avoid that, we have to include the .moc manually. See: https://stackoverflow.com/a/3005403
#include "main.moc"

// TODO: Make this a static function of class Database.
void databaseConnect() {
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");

    db.setDatabaseName("user_data.db");
    if (!db.open())
    {
        qDebug() << "Error: connection with database fail";
        qWarning() << "MainWindow::DatabaseConnect - ERROR: " << db.lastError().text();
    }
    else
    {
        qDebug() << "Database: connection ok";
    }

}

void databaseInit() {
    QSqlQuery query;
    query.prepare("CREATE TABLE people(id INTEGER PRIMARY KEY, userid TEXT, password TEXT);");

    if (!query.exec())
    {
        qDebug() << "Couldn't create the table 'people': one might already exist.";
    }
}

void databasePopulate() {
    QSqlQuery query;

    if(!query.exec("INSERT INTO people(userid,password) VALUES('admin','admin')"))
        qWarning() << "MainWindow::DatabasePopulate - ERROR: " << query.lastError().text();
    if(!query.exec("INSERT INTO people(userid,password) VALUES('user','user')"))
        qWarning() << "MainWindow::DatabasePopulate - ERROR: " << query.lastError().text();

}

void printAllPersons()
{
    qDebug() << "Persons in db:";
    QSqlQuery query("SELECT * FROM people");
    int idName = query.record().indexOf("userid");
    while (query.next())
    {
        QString name = query.value(idName).toString();
        qDebug() << "===" << name;
    }
}

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    databaseConnect();
    databaseInit();
//    databasePopulate();
    printAllPersons();

    qmlRegisterType<MyDatabase>("org.mydb", 1, 0, "MyDatabase");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
