.class Lcom/nuance/swype/input/DrawBufferManager$2;
.super Lcom/nuance/android/util/LruCache;
.source "DrawBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/DrawBufferManager;-><init>(I)V
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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/DrawBufferManager;
    .param p2, "maxSize"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$2;, "Lcom/nuance/swype/input/DrawBufferManager$2;"
    iput-object p1, p0, Lcom/nuance/swype/input/DrawBufferManager$2;->this$0:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-direct {p0, p2}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$2;, "Lcom/nuance/swype/input/DrawBufferManager$2;"
    if-eqz p3, :cond_b

    .line 50
    instance-of v0, p3, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 51
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "oldValue":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_b
    :goto_b
    return-void

    .line 52
    .restart local p3    # "oldValue":Ljava/lang/Object;
    :cond_c
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 53
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .end local p3    # "oldValue":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 43
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$2;, "Lcom/nuance/swype/input/DrawBufferManager$2;"
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/DrawBufferManager$2;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Integer;Ljava/lang/Object;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 63
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$2;, "Lcom/nuance/swype/input/DrawBufferManager$2;"
    const/4 v0, 0x0

    .line 65
    .local v0, "byteCount":I
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    .line 66
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 70
    :cond_b
    :goto_b
    return v0

    .line 67
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_c
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_b

    .line 68
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_b
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 43
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager$2;, "Lcom/nuance/swype/input/DrawBufferManager$2;"
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/DrawBufferManager$2;->sizeOf(Ljava/lang/Integer;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
