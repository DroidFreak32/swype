.class Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;
.super Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/MasterDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecryptionCursor"
.end annotation


# instance fields
.field final codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/sqlite/SQLDataSource;Landroid/database/Cursor;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;-><init>(Lcom/nuance/connect/sqlite/SQLDataSource;Landroid/database/Cursor;)V

    iput-object p3, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-super {p0}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->close()V

    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-interface {v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$Codec;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-interface {v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$Codec;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-super {p0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$Codec;->getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 6

    invoke-super {p0}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    array-length v0, v2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_1a

    iget-object v3, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$Codec;->getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-super {p0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$Codec;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method
