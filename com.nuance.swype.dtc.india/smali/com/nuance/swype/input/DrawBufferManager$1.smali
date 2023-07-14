.class Lcom/nuance/swype/input/DrawBufferManager$1;
.super Lcom/nuance/android/util/LruCache;
.source "DrawBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/DrawBufferManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/android/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/DrawBufferManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/DrawBufferManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/DrawBufferManager;
    .param p2, "maxSize"    # I

    .prologue
    .line 23
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$1;, "Lcom/nuance/swype/input/DrawBufferManager$1;"
    iput-object p1, p0, Lcom/nuance/swype/input/DrawBufferManager$1;->this$0:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-direct {p0, p2}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$1;, "Lcom/nuance/swype/input/DrawBufferManager$1;"
    if-eqz p3, :cond_0

    .line 30
    instance-of v0, p3, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 31
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "oldValue":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    .restart local p3    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "cache entry removed:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 34
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .end local p3    # "oldValue":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$1;, "Lcom/nuance/swype/input/DrawBufferManager$1;"
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/DrawBufferManager$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
