.class Lcom/localytics/android/BaseProvider$1;
.super Ljava/lang/Object;
.source "BaseProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/BaseProvider;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseProvider;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/localytics/android/BaseProvider$1;->this$0:Lcom/localytics/android/BaseProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 327
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v2, p0, Lcom/localytics/android/BaseProvider$1;->this$0:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "PRAGMA incremental_vacuum(0);"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_19
    .catchall {:try_start_1 .. :try_end_10} :catchall_26

    move-result v2

    if-nez v2, :cond_d

    .line 339
    if-eqz v0, :cond_18

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_18
    :goto_18
    return-void

    .line 333
    :catch_19
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1a
    const-string/jumbo v2, "Auto-vacuum error"

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_26

    .line 339
    if-eqz v0, :cond_18

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_18

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_26
    move-exception v2

    if-eqz v0, :cond_2c

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_2c
    throw v2
.end method
