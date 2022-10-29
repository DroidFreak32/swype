.class final Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$2;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$2;->this$0:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$2;->this$0:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    monitor-enter v1

    .line 1284
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$2;->this$0:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->access$1700(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V

    .line 1285
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
