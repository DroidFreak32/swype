.class Lcom/nuance/connect/sqlite/MasterDatabase$1;
.super Lcom/nuance/connect/sqlite/SQLDataSource;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/MasterDatabase;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/MasterDatabase;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/connect/sqlite/MasterDatabase$1;->this$0:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-direct {p0, p2}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public open()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$1;->this$0:Lcom/nuance/connect/sqlite/MasterDatabase;

    # getter for: Lcom/nuance/connect/sqlite/MasterDatabase;->helper:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$500(Lcom/nuance/connect/sqlite/MasterDatabase;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
