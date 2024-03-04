.class Lcom/nuance/swype/input/DrawBufferManager$1;
.super Lcom/nuance/android/util/LruCache;
.source "DrawBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/DrawBufferManager;-><init>(Landroid/content/Context;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/DrawBufferManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/DrawBufferManager;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/DrawBufferManager$1;->this$0:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-direct {p0, p2}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 29
    if-eqz p3, :cond_0

    .line 30
    instance-of v0, p3, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 31
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "oldValue":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    .restart local p3    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 33
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .end local p3    # "oldValue":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/DrawBufferManager$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
