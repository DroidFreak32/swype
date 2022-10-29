.class final Lcom/nuance/connect/sqlite/MasterDatabase$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/MasterDatabase$Codec;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/sqlite/MasterDatabase$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/nuance/connect/util/EncryptUtils;->databaseDecryptString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/nuance/connect/util/EncryptUtils;->databaseEncryptString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getActualColumnName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    # getter for: Lcom/nuance/connect/sqlite/MasterDatabase;->instance:Lcom/nuance/connect/sqlite/MasterDatabase;
    invoke-static {}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$600()Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    # getter for: Lcom/nuance/connect/sqlite/MasterDatabase;->instance:Lcom/nuance/connect/sqlite/MasterDatabase;
    invoke-static {}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$600()Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    # invokes: Lcom/nuance/connect/sqlite/MasterDatabase;->getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$300(Lcom/nuance/connect/sqlite/MasterDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
