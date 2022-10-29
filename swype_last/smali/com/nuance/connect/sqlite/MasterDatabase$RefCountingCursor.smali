.class Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;
.super Landroid/database/CursorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/MasterDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefCountingCursor"
.end annotation


# instance fields
.field protected final dataSourceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/sqlite/SQLDataSource;",
            ">;"
        }
    .end annotation
.end field

.field protected final token:I


# direct methods
.method public constructor <init>(Lcom/nuance/connect/sqlite/SQLDataSource;Landroid/database/Cursor;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->dataSourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->incrementOpenRefCount()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->token:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->dataSourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/SQLDataSource;

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;->token:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decrementOpenRefCount(I)V

    :cond_12
    return-void
.end method
